create or replace trigger tr_mk_payrefund_01
AFTER insert on payrefund
for each row
begin
     if :new.pmethod ='���ϸ���' then
     insert into mtracking values(mk_mtrackingseq.nextval , sysdate, :new.mileage,'�����װ�','�Һ�','user001');
     elsif :new.pmethod ='ī��' then 
     insert into mtracking values(mk_mtrackingseq.nextval , sysdate, :new.mileage, '�����װ�','����','user001');
     elsif :new.pmethod = '����Ʈī��' then
     insert into card_use values ( mk_giftcardseq.nextval,'���' ,sysdate, :new.cost, '1234-5678-9012-3456');
     end if;
end;
select * from mtracking;

     create sequence mk_payrefundseq 
     start with 1 increment by 1 ;
     
     
create or replace procedure mk_payrefund_01
(
    pddate varchar2,
    pdairport scplane.dairport%type,
    paairport scplane.aairport%type,
    pseatnum payrefund.seatnumber%type default null,
    pnum number,
    pflight payrefund.flight%type,
    ppmethod payrefund.pmethod%type,
    pnluggage payrefund.nluggage%type,
    PCARDNUM PAYrefund.giftcardnumber%type default null
)

is
    vrenum scplane.renum%type;
    vcost payrefund.cost%type;
    vpnum payrefund.seatnumber%type;
    occupfiederror exception; 
    nocard exception; 
    cardnumc payrefund.giftcardnumber%type;
begin
     select 
         count(seatnumber)  into vpnum from payrefund p ,scplane s where p.renum = s.renum and pseatnum=p.seatnumber ;
     if  vpnum !=0 then
         raise occupfiederror;
        end if;
        select count(card_num) into cardnumc from giftcard ;
         if  cardnumc !=1  and ppmethod = '����Ʈī��' then
         raise  nocard ;
        end if;
    select renum  into vrenum from scplane s where to_char(s.ddate ,'YYMMDDhh24mi') =pddate
    and substr(s.dairport,instr(s.dairport,'.')+1) = pdairport and  substr(s.aairport,instr(s.aairport,'.')+1) = paairport ;
    select d.fare ������� into vcost from scplane s,dfare d 
where s.renum=vrenum and d.peak = CASE
        WHEN to_char(s.ddate, 'yymmdd') = to_date('240101','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_date('240208','yymmdd') AND to_date('240213','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_date('240224','yymmdd') AND to_date('240302','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_date('240503','yymmdd') AND to_date('240506','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') = to_date('240515','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_Date('240606','yymmdd') AND to_date('240608','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_Date('240727','yymmdd') AND to_date('240824','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_Date('240913','yymmdd')AND to_Date('240919','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_Date('241003','yymmdd') AND to_Date('241005','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') = to_Date('241009','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') = to_Date('241225','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') = to_Date('241231','yymmdd') THEN '������'
        else '�����'
        end
    and d.discount = '����' and substr(d.route,instr(d.route,'/')+1,instr(d.route,'-')-instr(d.route,'/')-1)=pdairport and substr(d.route,instr(d.route,'/',-1)+1)=paairport and 
      d.timezone = case when to_char( s.ddate , 'hh24mi') >= '1500' then '�Ϲ�' else '��ȣ' end  and d.wknddy  = case to_char(s.ddate , 'dy') when '��' then '����' when 'ȭ' then '����' when '��' then '����' when '��' then '����' else '�ָ�' end;

    insert into payrefund  values
    (mk_payrefundseq.nextval, '����', ppmethod , pflight, pseatnum ,sysdate , pnluggage ,vcost, 0 ,'user001', vrenum, pcardnum);
    dbms_output.put_line('������ �Ϸ�Ǿ����ϴ�.');
    exception
        when no_data_found then
        dbms_output.put_line('���డ���� ������ �����ϴ�');
        when occupfiederror then
         dbms_output.put_line('�ش� �¼��� �̹� ����Ǿ��ֽ��ϴ�.');
          when nocard then
         dbms_output.put_line('�Է��Ͻ� ����Ʈī�尡 �����ϴ�.');
end;

exec mk_payrefund_01('2403200930','GMP','CJU','20E',1,'����','����Ʈī��',1, '1234-5678-9012-3456');

SELECT * FROM GIFTCARD;
select * from payrefund;
SELECT * FROM MTRACKING;