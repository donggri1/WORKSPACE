create or replace trigger tr_mk_payrefund_01
AFTER insert on payrefund
for each row
begin
     if :new.pmethod ='마일리지' then
     insert into mtracking values(mk_mtrackingseq.nextval , sysdate, :new.mileage,'대한항공','소비','user001');
     elsif :new.pmethod ='카드' then 
     insert into mtracking values(mk_mtrackingseq.nextval , sysdate, :new.mileage, '대한항공','적립','user001');
     elsif :new.pmethod = '기프트카드' then
     insert into card_use values ( mk_giftcardseq.nextval,'사용' ,sysdate, :new.cost, '1234-5678-9012-3456');
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
         if  cardnumc !=1  and ppmethod = '기프트카드' then
         raise  nocard ;
        end if;
    select renum  into vrenum from scplane s where to_char(s.ddate ,'YYMMDDhh24mi') =pddate
    and substr(s.dairport,instr(s.dairport,'.')+1) = pdairport and  substr(s.aairport,instr(s.aairport,'.')+1) = paairport ;
    select d.fare 정상운임 into vcost from scplane s,dfare d 
where s.renum=vrenum and d.peak = CASE
        WHEN to_char(s.ddate, 'yymmdd') = to_date('240101','yymmdd') THEN '성수기'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_date('240208','yymmdd') AND to_date('240213','yymmdd') THEN '성수기'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_date('240224','yymmdd') AND to_date('240302','yymmdd') THEN '성수기'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_date('240503','yymmdd') AND to_date('240506','yymmdd') THEN '성수기'
        WHEN to_char(s.ddate, 'yymmdd') = to_date('240515','yymmdd') THEN '성수기'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_Date('240606','yymmdd') AND to_date('240608','yymmdd') THEN '성수기'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_Date('240727','yymmdd') AND to_date('240824','yymmdd') THEN '성수기'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_Date('240913','yymmdd')AND to_Date('240919','yymmdd') THEN '성수기'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_Date('241003','yymmdd') AND to_Date('241005','yymmdd') THEN '성수기'
        WHEN to_char(s.ddate, 'yymmdd') = to_Date('241009','yymmdd') THEN '성수기'
        WHEN to_char(s.ddate, 'yymmdd') = to_Date('241225','yymmdd') THEN '성수기'
        WHEN to_char(s.ddate, 'yymmdd') = to_Date('241231','yymmdd') THEN '성수기'
        else '비수기'
        end
    and d.discount = '정상' and substr(d.route,instr(d.route,'/')+1,instr(d.route,'-')-instr(d.route,'/')-1)=pdairport and substr(d.route,instr(d.route,'/',-1)+1)=paairport and 
      d.timezone = case when to_char( s.ddate , 'hh24mi') >= '1500' then '일반' else '선호' end  and d.wknddy  = case to_char(s.ddate , 'dy') when '월' then '주중' when '화' then '주중' when '수' then '주중' when '목' then '주중' else '주말' end;

    insert into payrefund  values
    (mk_payrefundseq.nextval, '결제', ppmethod , pflight, pseatnum ,sysdate , pnluggage ,vcost, 0 ,'user001', vrenum, pcardnum);
    dbms_output.put_line('예약이 완료되었습니다.');
    exception
        when no_data_found then
        dbms_output.put_line('예약가능한 일정이 없습니다');
        when occupfiederror then
         dbms_output.put_line('해당 좌석은 이미 예약되어있습니다.');
          when nocard then
         dbms_output.put_line('입력하신 기프트카드가 없습니다.');
end;

exec mk_payrefund_01('2403200930','GMP','CJU','20E',1,'할인','기프트카드',1, '1234-5678-9012-3456');

SELECT * FROM GIFTCARD;
select * from payrefund;
SELECT * FROM MTRACKING;