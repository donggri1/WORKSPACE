-- SCOTT  
--(��) : �������� ���� ������Ʈ
-- PL/SQL
--------------------------------------------------------------------------------
SELECT * FROM t_member;
SELECT * FROM t_poll;
SELECT * FROM t_pollsub;
SELECT * FROM t_voter;
--
1) ȸ�� ����/����/Ż�� ����..
DESC T_MEMBER;
�̸�            ��?       ����            
------------- -------- ------------- 
MEMBERSEQ     NOT NULL NUMBER(4)       PK
MEMBERID      NOT NULL VARCHAR2(20)  
MEMBERPASSWD           VARCHAR2(20)  
MEMBERNAME             VARCHAR2(20)  
MEMBERPHONE            VARCHAR2(20)  
MEMBERADDRESS          VARCHAR2(100) 

  ��. T_MEMBER  -> PK Ȯ��.
SELECT *  
FROM user_constraints  
WHERE table_name LIKE 'T_M%'  AND constraint_type = 'P';
    
  ��.  ȸ������
  ������(sequence)  �ڵ����� ��ȣ �߻���Ű�� ��ü == ���� (��ȣ)
INSERT INTO   T_MEMBER (  MEMBERSEQ,MEMBERID,MEMBERPASSWD,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS )
VALUES                 (  1,         'admin', '1234',  '������', '010-1111-1111', '���� ������' );
INSERT INTO   T_MEMBER (  MEMBERSEQ,MEMBERID,MEMBERPASSWD,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS )
VALUES                 (  2,         'hong', '1234',  'ȫ�浿', '010-1111-1112', '���� ���۱�' );
INSERT INTO   T_MEMBER (  MEMBERSEQ,MEMBERID,MEMBERPASSWD,MEMBERNAME,MEMBERPHONE,MEMBERADDRESS )
VALUES                 (  3,         'kim', '1234',  '����', '010-1111-1341', '��� �����ֽ�' );
    COMMIT;
  ��. ȸ�� ���� ��ȸ
  SELECT * 
  FROM t_member;
  
  ��. ȸ�� ���� ����
  �α��� -> (ȫ�浿) -> [�� ����] -> �� ���� ���� -> [����] -> [�̸�][][][][][][] -> [����]
  PL/SQL
  UPDATE T_MEMBER
  SET    MEMBERNAME = , MEMBERPHONE = 
  WHERE MEMBERSEQ = 2;
  ��. ȸ�� Ż��
  DELETE FROM T_MEMBER 
  WHERE MEMBERSEQ = 2;
  
--------------------------------------------------------------------------------
1) ȸ�� ����/����/Ż�� ����..    
   ��. �����ڷ� �α���         
   ��. [�����ۼ�] �޴� ����
   ��. ���� �ۼ� �������� �̵�...
   INSERT INTO T_POLL (PollSeq,Question,SDate, EDAte , ItemCount,PollTotal, RegDate, MemberSEQ )
   VALUES             ( 1  ,'�����ϴ� �����?'
                          , TO_DATE( '2024-02-01 00:00:00'   ,'YYYY-MM-DD HH24:MI:SS')
                          , TO_DATE( '2024-02-15 18:00:00'   ,'YYYY-MM-DD HH24:MI:SS') 
                          , 5
                          , 0
                          , TO_DATE( '2023-01-15 00:00:00'   ,'YYYY-MM-DD HH24:MI:SS')
                          , 1
                    );
    ��. ���� �׸�                  
 
INSERT INTO T_PollSub (PollSubSeq          , Answer , ACount , PollSeq  ) 
VALUES                (1 ,'�载��', 0, 1 );
INSERT INTO T_PollSub (PollSubSeq          , Answer , ACount , PollSeq  ) 
VALUES                (2 ,'�����', 0, 1 );
INSERT INTO T_PollSub (PollSubSeq          , Answer , ACount , PollSeq  ) 
VALUES                (3 ,'������', 0, 1 );
INSERT INTO T_PollSub (PollSubSeq          , Answer , ACount , PollSeq  ) 
VALUES                (4 ,'�輱��', 0, 1 );
INSERT INTO T_PollSub (PollSubSeq          , Answer , ACount , PollSeq  ) 
VALUES                (5 ,'ȫ�浿', 0, 1 );      
   COMMIT;
--
SELECT * FROM t_member;
SELECT * FROM t_poll;
SELECT * FROM t_pollsub;
SELECT * FROM t_voter;
--
   ��. ���� �ۼ� �������� �̵�...
   INSERT INTO T_POLL (PollSeq,Question,SDate, EDAte , ItemCount,PollTotal, RegDate, MemberSEQ )
   VALUES             ( 2  ,'�����ϴ� ����?'
                          , TO_DATE( '2024-02-25 00:00:00'   ,'YYYY-MM-DD HH24:MI:SS')
                          , TO_DATE( '2024-03-15 18:00:00'   ,'YYYY-MM-DD HH24:MI:SS') 
                          , 4
                          , 0
                          , TO_DATE( '2024-02-20 00:00:00'   ,'YYYY-MM-DD HH24:MI:SS')
                          , 1
                    );
    ��. ���� �׸�                  
 
INSERT INTO T_PollSub (PollSubSeq          , Answer , ACount , PollSeq  ) 
VALUES                (6 ,'�ڹ�', 0, 2 );
INSERT INTO T_PollSub (PollSubSeq          , Answer , ACount , PollSeq  ) 
VALUES                (7 ,'����Ŭ', 0, 2 );
INSERT INTO T_PollSub (PollSubSeq          , Answer , ACount , PollSeq  ) 
VALUES                (8 ,'HTML5', 0, 2 );
INSERT INTO T_PollSub (PollSubSeq          , Answer , ACount , PollSeq  ) 
VALUES                (9 ,'JSP', 0, 2 );
   
   COMMIT;
--
--
   ��. ���� �ۼ� �������� �̵�...
   INSERT INTO T_POLL (PollSeq,Question,SDate, EDAte , ItemCount,PollTotal, RegDate, MemberSEQ )
   VALUES             ( 3  ,'�����ϴ� ��?'
                          , TO_DATE( '2024-03-25 00:00:00'   ,'YYYY-MM-DD HH24:MI:SS')
                          , TO_DATE( '2024-04-15 18:00:00'   ,'YYYY-MM-DD HH24:MI:SS') 
                          , 3
                          , 0
                          , TO_DATE( '2024-03-01 00:00:00'   ,'YYYY-MM-DD HH24:MI:SS')
                          , 1
                    );
    ��. ���� �׸�                  
 
INSERT INTO T_PollSub (PollSubSeq          , Answer , ACount , PollSeq  ) 
VALUES                (10 ,'����', 0, 3 );
INSERT INTO T_PollSub (PollSubSeq          , Answer , ACount , PollSeq  ) 
VALUES                (11 ,'���', 0, 3 );
INSERT INTO T_PollSub (PollSubSeq          , Answer , ACount , PollSeq  ) 
VALUES                (12 ,'�Ķ�', 0, 3 ); 
   
   COMMIT;
--

SELECT *
FROM t_poll;
SELECT *
FROM t_pollsub; 
 
SELECT MAX(POLLSUBSEQ)+1
FROM t_pollsub;  
   ���� ����, ���� ���� query
 
 11:03 ����...
--------------------------------------------------------------------------------
3) ȸ���� �α����߽��ϴ�.     [ �������������  ]
   2 ���� : �����ϴ� ���� "����" Ŭ��
SELECT *
FROM t_member;   
  --> 3	kim	1234	���� (����)
SELECT *
FROM (
    SELECT  pollseq ��ȣ, question ����, membername �ۼ���
         , sdate ������, edate ������, itemcount �׸��, polltotal �����ڼ�
         , CASE 
              WHEN  SYSDATE > edate THEN  '����'
              WHEN  SYSDATE BETWEEN  sdate AND edate THEN '���� ��'
              ELSE '���� ��'
           END ���� -- ����Ӽ�   ����, ���� ��, ���� ��
    FROM t_poll p JOIN  t_member m ON m.memberseq = p.memberseq
    ORDER BY ��ȣ DESC
) t 
WHERE ���� != '���� ��';  

--------------------------------------------------------------------------------  
3)  3(����) �α��� ���� +  2�� ���� ����..( �����ϴ� ���� ) [ ��ǥ ������ ]
   ���� ���μ��� 
   ���� ������������� ���������ϱ� ���ؼ� 2�� ������ Ŭ��
   [���� ���� ������]
   1) 2�� ������ ������ SELECT-> ���
       ��. �������� 
           ����, �ۼ���, �ۼ���, ������, ������, ����, �׸�� ��ȸ
           SELECT question, membername
               , TO_CHAR(regdate, 'YYYY-MM-DD AM hh:mi:ss')
               , TO_CHAR(sdate, 'YYYY-MM-DD')
               , TO_CHAR(edate, 'YYYY-MM-DD')
               , CASE 
                  WHEN  SYSDATE > edate THEN  '����'
                  WHEN  SYSDATE BETWEEN  sdate AND edate THEN '���� ��'
                  ELSE '���� ��'
               END ����
               , itemcount
           FROM t_poll p JOIN t_member m ON p.memberseq = m.memberseq
           WHERE pollseq = 2;
       ��. �����׸�
           SELECT answer
           FROM t_pollsub
           WHERE pollseq = 2;
   2) �������ڼ� 7��
      �� []
      .  []
      .  []
    -- 2�� ������ �������ڼ�   
    SELECT  polltotal  
    FROM t_poll
    WHERE pollseq = 2;
    -- 
    SELECT answer, acount
        , ( SELECT  polltotal      FROM t_poll    WHERE pollseq = 2 ) totalCount
        -- ,  ����׷���
        , ROUND (acount /  ( SELECT  polltotal      FROM t_poll    WHERE pollseq = 2 ) * 100) || '%'
     FROM t_pollsub
    WHERE pollseq = 2;
  
  3) [ ��ǥ�ϱ� ] ��ư Ŭ��
     - 2������ �׸��� ������ �ؾߵȴ�. 
    �ڹ�
    ����Ŭ (üũ)  PK 7  ( �����׸�  PK ���� 7�� ����)
    HTML5
    JSP
    
    SELECT *
    FROM t_voter;
    -- (1) t_voter
    INSERT INTO t_voter 
    ( vectorseq, username, regdate, pollseq, pollsubseq, memberseq )
    VALUES
    (      1   ,  '����'      , SYSDATE,   2  ,     7 ,        3 );
    COMMIT;
    
    -- 1)         2/3 �ڵ� UPDATE  [Ʈ����]
    -- (2) t_poll   totalCount = 1����
    UPDATE   t_poll
    SET polltotal = polltotal + 1
    WHERE pollseq = 2;
    
    -- (3)t_pollsub   account = 1����
    UPDATE   t_pollsub
    SET acount = acount + 1
    WHERE  pollsubseq = 7;
    
    commit;
    
    SELECT *    
    FROM t_poll;
    
    SELECT *
    FROM t_pollsub;
 
 -------------------------------------------------------------------------------
 �����ġ�
	CREATE SEQUENCE ��������
	[ INCREMENT BY ����]  ������   10
	[ START WITH ����]    ���۰�   50
	[ MAXVALUE n ? NOMAXVALUE]  �ִ밪
	[ MINVALUE n ? NOMINVALUE]  �ּҰ�
	[ CYCLE ? NOCYCLE]
	[ CACHE n ? NOCACHE];
  
  ��) dept �μ� ���̺� ����� ������ ����
  SELECT *
  FROM dept;
 
 
  CREATE SEQUENCE seq_deptno
  INCREMENT BY 10
  START WITH 50   
  MAXVALUE  90 
  -- MINVALUE  1
  NOCYCLE 
  NOCACHE;
   
 -- Sequence SEQ_DEPTNO��(��) �����Ǿ����ϴ�.
 -- ��� ������ ��ȸ
 SELECT *
 FROM user_sequences;
 
 11:05 ��������~
 --
 CREATE SEQUENCE seq_test;
 -- 
 DROP SEQUENCE seq_test;
 DROP SEQUENCE seq_deptno;
 
 --
-- ORA-08002: sequence SEQ_DEPTNO.CURRVAL is not yet defined in this session
--08002. 00000 -  "sequence %s.CURRVAL is not yet defined in this session"
--*Cause:    sequence CURRVAL has been selected before sequence NEXTVAL
--*Action:   select NEXTVAL from the sequence before selecting CURRVAL
 SELECT seq_deptno.currval  -- nextval �����ϱ� ������   ( ��� )
 FROM dual;

-- �������� ����ؼ� �μ��� �߰�..
INSERT INTO dept (deptno, dname, loc) VALUES ( seq_deptno.NEXTVAL, 'QC', 'SEOUL'   );
-- ORA-01438: value larger than specified [precision] allowed for this column
-- ����?  NUMBER( p, [s] )
DESC DEPT;  -- NUMBER(2)
INSERT INTO dept (deptno, dname, loc) VALUES ( seq_deptno.NEXTVAL, 'QC2', 'POHANG'   );
COMMIT; 
SELECT *
FROM dept;
-- 90	90
SELECT   seq_deptno.NEXTVAL, seq_deptno.CURRVAL
FROM dual; 
 
DELETE FROM dept
WHERE deptno >= 50;
COMMIT;

SELECT * 
FROM dept;

-- PL/SQL --
-- PL/SQL = Procedural Language(�������� ���) Ȯ���  SQL
--           ���,����, ���ν���,�Լ� ,���
-- PL/SQL�� �� ������ ����̴�.
--            3���� ������ �� ���� 
[DECLARE]
   --1) ���� ��  DECLARE��
BEGIN
   --2) ���� ��  BEGIN ��
   /*  PL/SQL�� �� �ȿ��� ��Ƽ���� �ּ�ó��
   SELECT ��;
   SELECT ��;
   SELECT ��;
   INSERT ��;
   SELECT ��;
   UPDATE ��;
   DELETE ��;
   SELECT ��;
   SELECT ��;
   */
   COMMIT;
[EXCEPTION]
   --3) ���� ó�� ��  EXCEPTION ��
END;
 
-- PL/SQL�� 5���� ����
--1) �͸� ���ν���( Anoymous Procedure ) : DECLARE  �� �����Ѵ�.
--  �����ȣ�� 7369 �� ����� �̸�,pay �� ���ͼ� ������ �����ϰ� ���.
DESC emp;
--���� ���� -
--ORA-06550: line 4, column 3:
--PLS-00103: Encountered the symbol "," when expecting one of the following:
--
--   := ; not null default character
--06550. 00000 -  "line %s, column %s:\n%s"
--*Cause:    Usually a PL/SQL compilation error.
--*Action:
DECLARE
  -- ����, ��� �����ϴ�  ���� ��
  --   ; �����ݷ� ���
  -- vename VARCHAR2(10);   TYPE�������� ����
  vename emp.ename%TYPE; -- ���̺� ������ ���� ����� �� ���.
  vpay NUMBER ;
  -- �ڹ�   final double PI = 3.141592;
  -- PLS-00103: Encountered the symbol "=" when expecting one of the following:  
  vpi CONSTANT NUMBER := 3.141592;
BEGIN
  vpay := 0;

  SELECT   ename, sal + NVL(comm,0) pay
     INTO  vename, vpay  -- SELECT, FETCH �� INTO ���� ���. �������� �Ҵ� 2��° ���     
  FROM emp
  WHERE empno = 7369;  
  -- JAVA  : System.out.println(vename +" " + vpay);
  -- PL/SQL ���
  -- DBMS_OUTPUT.PUT_LINE('Hello World');  
  DBMS_OUTPUT.PUT_LINE( vename || ' ' || vpay );  
--EXCEPTION
END;

-- ����) dept ���̺��� 
-- 30�� �μ��� �μ����� ���ͼ� ����ϴ�  �͸����ν����� �ۼ�,�׽�Ʈ
DECLARE
   vdname dept.dname%TYPE;
BEGIN
   SELECT dname INTO vdname
   FROM dept
   WHERE deptno = 30;   
   DBMS_OUTPUT.PUT_LINE('�μ��� : ' || vdname );   
-- EXCEPTION
END;

-- ����) 30�� �μ��� �������� ���ͼ�
--    10�� �μ��� ���������� �����ϴ� �͸����ν����� �ۼ�,�׽�Ʈ
DECLARE
  vloc dept.loc%TYPE;
BEGIN
  SELECT loc INTO vloc
  FROM dept
  WHERE deptno = 30;
  
  UPDATE dept
  SET loc = vloc
  WHERE deptno = 10;
  
  -- COMMIT;
--EXCEPTION
  -- ROLLBACK;
END;
 
SELECT *
FROM dept;

-- [����] 10�� �μ��� �߿� �ְ�޿�(sal)�� �޴� ����� ������ ���.(��ȸ)
-- PL/SQL  �͸����ν��� �ۼ�, �׽�Ʈ
--1) TOP-N 
SELECT *
FROM (
    SELECT *
    FROM emp
    WHERE deptno = 10
    ORDER BY sal DESC
)
WHERE ROWNUM = 1;
--2) RANK �Լ�
SELECT *
FROM ( 
    SELECT 
       RANK() OVER(ORDER BY sal DESC ) sal_rank
       , emp.*
    FROM emp
    WHERE deptno = 10
) 
WHERE sal_Rank = 1;
--3) ��������
SELECT *
FROM emp
WHERE deptno = 10 AND sal = (
                        SELECT MAX(sal)
                        FROM emp
                        WHERE deptno = 10 );

--�͸����ν����� ���.
DECLARE
  vmax_sal_10 emp.sal%TYPE;
  
  vempno emp.empno%TYPE;
  vename emp.ename%TYPE;
  vjob emp.job%TYPE;
  vhiredate emp.hiredate%TYPE;
  vdeptno emp.deptno%TYPE;  
  vsal emp.sal%TYPE;
BEGIN
  SELECT MAX(sal) INTO vmax_sal_10
  FROM emp
  WHERE deptno = 10;
  
  SELECT empno, ename, job, sal, hiredate, deptno
   INTO vempno, vename, vjob, vsal, vhiredate, vdeptno
  FROM emp
  WHERE deptno = 10 AND sal = vmax_sal_10;
  
  DBMS_OUTPUT.PUT_LINE( '�����ȣ :'  || vempno );
  DBMS_OUTPUT.PUT_LINE( '����� :'    || vename );
  DBMS_OUTPUT.PUT_LINE( '�Ի����� :'  || vhiredate );
-- EXCEPTION
END;

--�͸����ν����� ��� 2.
DECLARE
  vmax_sal_10 emp.sal%TYPE;
  
  vemp_row emp%ROWTYPE;
BEGIN
  SELECT MAX(sal) INTO vmax_sal_10
  FROM emp
  WHERE deptno = 10;
  
  SELECT empno, ename, job, sal, hiredate, deptno
   INTO vemp_row.empno, vemp_row.ename
     , vemp_row.job, vemp_row.sal
     , vemp_row.hiredate, vemp_row.deptno
  FROM emp
  WHERE deptno = 10 AND sal = vmax_sal_10;
  
  DBMS_OUTPUT.PUT_LINE( '�����ȣ :'  || vemp_row.empno );
  DBMS_OUTPUT.PUT_LINE( '����� :'    || vemp_row.ename );
  DBMS_OUTPUT.PUT_LINE( '�Ի����� :'  || vemp_row.hiredate );
-- EXCEPTION
END;

-- [ Ŀ��( CURSOR ) ]
DECLARE
   vname insa.name%TYPE := '�͸�';
   vpay NUMBER := 0;
   vmessage VARCHAR2(100);
BEGIN
  -- PL/SQL���� ���� ���� ���� ó���� ���� �ݵ�� [Ŀ��]�� ����ؾ� �ȴ�. (�ϱ�)
  SELECT name, basicpay + sudang pay
   INTO vname, vpay
  FROM insa;
  -- WHERE num = 1001;   insa ���̺��� ��� ��� ���� �̸�,pay ���
  
  vmessage := vname || + ',  ' || vpay;
  DBMS_OUTPUT.PUT_LINE(vmessage);
--EXCEPTION
END;


--ORA-01422: exact fetch returns more than requested number of rows
--ORA-06512: at line 6
--01422. 00000 -  "exact fetch returns more than requested number of rows"
--*Cause:    The number specified in exact fetch is less than the rows returned.
--*Action:   Rewrite the query or change number of rows requested


--2) ���� ���ν���( Stored Procedure )  ��ǥ���� PL/SQL *****
--3) ���� �Լ�(Stored Function)
--4) ��Ű��(package)
--5) Ʈ����(trigger)


-- 1) �͸����ν��� + ���Կ����� ( := ) , ���
DECLARE
   a NUMBER := 1;
   b NUMBER;
   c NUMBER := 0;
BEGIN
   b := 2;
   c := a + b;
   
   DBMS_OUTPUT.PUT_LINE( c );
-- EXCEPTION
END;

-- PL/SQL �ȿ��� ����ϴ�  ����� ����.. -- 
�ڹ�)
if(){}
--
IF ���ǽ� THEN
END IF;

if(){}else{}
--
IF ���ǽ� THEN
ELSE
END IF;

if(){}
else if(){}
else if(){}
else if(){
}else{}
-- (����)
IF ���ǽ� THEN
ELSIF ���ǽ� THEN
ELSIF ���ǽ� THEN
ELSIF ���ǽ� THEN
ELSE
END IF;

-- ����) �ϳ��� ������ �Է¹޾Ƽ� Ȧ��/¦�� ��� ���..(�͸����ν���)
DECLARE
   vnum NUMBER(4) := 0;
   vresult VARCHAR2(4);
BEGIN
   vnum := :bindNumber; -- ���ε庯��
   IF  MOD( vnum , 2 ) = 0 THEN  -- ¦��
     -- DBMS_OUTPUT.PUT_LINE('¦��');
     vresult := '¦��';
   ELSE  -- Ȧ��
     -- DBMS_OUTPUT.PUT_LINE('Ȧ��');
     vresult := 'Ȧ��';
   END IF;
   DBMS_OUTPUT.PUT_LINE( vresult );   
--EXCEPTION
END;

-- 3:00 ��������~
-- [����] PL/SQL   IF�� ��������...
--  �������� �Է¹޾Ƽ� ����̾簡 ��� ���... ( �͸����ν��� )
DECLARE
   vkor NUMBER(3) := 0;
   vgrade VARCHAR2(3) := '��';
BEGIN
   vkor := :bindNumber; -- ���ε庯��
   IF  (vkor BETWEEN 90 AND 100) THEN   
     vgrade := '��';
   ELSIF vkor BETWEEN 80 AND 89 THEN   
     vgrade := '��';
   ELSIF vkor BETWEEN 70 AND 79 THEN
     vgrade := '��';
   ELSIF vkor BETWEEN 60 AND 69 THEN
     vgrade := '��';
   ELSIF vkor BETWEEN 0 AND 59 THEN
     vgrade := '��';
   -- ELSE  
     -- ������ �Է� �߸�!! ���� �߻�..
   END IF;
   DBMS_OUTPUT.PUT_LINE( vgrade );   
--EXCEPTION
END;

-- [����] PL/SQL   IF�� ��������...
--  �������� �Է¹޾Ƽ� ����̾簡 ��� ���... ( �͸����ν��� )
DECLARE
   vkor NUMBER(3) := 0;
   vgrade VARCHAR2(3) := '��';
BEGIN
   vkor := :bindNumber; -- ���ε庯��
   IF vkor BETWEEN 0 AND 100  THEN  
      vgrade := CASE   TRUNC( vkor/10 ) 
                    WHEN 10 THEN '��'
                    WHEN 9 THEN '��'
                    WHEN 8 THEN '��'
                    WHEN 7 THEN '��'
                    WHEN 6 THEN '��'
                    ELSE  '��'
                END;  
      DBMS_OUTPUT.PUT_LINE( vgrade );           
   ELSE
     DBMS_OUTPUT.PUT_LINE('�������� 0~100!!');
   END IF;
--EXCEPTION
END;

-- 1) WHILE LOOP��
�ڹ�   while �� 
while(���ǽ�){
} // while

����Ŭ PL/SQL 
WHILE (���ǽ�) 
LOOP   -- {
   // �����ڵ�
END LOOP;  -- }

--����) 1~10 ������ ��  WHILE ��� (�͸����ν���)
DECLARE
  vi NUMBER := 1;
  vsum NUMBER := 0;
BEGIN
   WHILE ( vi <= 10 )
   LOOP
     IF vi = 10  THEN
       DBMS_OUTPUT.PUT( vi);
     ELSE
       DBMS_OUTPUT.PUT( vi || '+');
     END IF;     
     vsum := vsum + vi;     
     vi := vi + 1; -- i++
   END LOOP;
   DBMS_OUTPUT.PUT_LINE(  '=' || vsum );
--EXCEPTION  
END;
-- 2) LOOP   END LOOP��
�ڹ� 
while( true ) {
  if(���ǽ�) break;
  
} 

LOOP
  --
  --
  --
  EXIT WHEN ���ǽ�;
END LOOP;

--����) 1~10 ������ ��  LOOP ~ END LOOP ��� (�͸����ν���)
DECLARE
  vi NUMBER := 1;
  vsum NUMBER := 0;
BEGIN
   
   LOOP
     IF vi = 10  THEN
       DBMS_OUTPUT.PUT( vi);
     ELSE
       DBMS_OUTPUT.PUT( vi || '+');
     END IF;     
     vsum := vsum + vi;  
     
     EXIT WHEN vi = 10;
     
     vi := vi + 1; -- i++
   END LOOP;
   
   DBMS_OUTPUT.PUT_LINE(  '=' || vsum );
--EXCEPTION  
END;

-- 3) FOR  LOOP��
DECLARE 
  vsum NUMBER := 0;
BEGIN   
   -- FOR i IN [REVERSE] 1..10 LOOP
   FOR i IN REVERSE 1..10 LOOP
       DBMS_OUTPUT.PUT(  i || '+' );
       vsum := vsum + i;  
   END LOOP;  
   DBMS_OUTPUT.PUT_LINE(  '=' || vsum );
--EXCEPTION  
END;

-- GOTO �� ~~ 
--DECLARE
BEGIN
  --
  GOTO first_proc;
  --
  <<second_proc>>
  DBMS_OUTPUT.PUT_LINE('> 2 ó�� ');
  GOTO third_proc; 
  -- 
  --
  <<first_proc>>
  DBMS_OUTPUT.PUT_LINE('> 1 ó�� ');
  GOTO second_proc; 
  -- 
  --
  --
  <<third_proc>>
  DBMS_OUTPUT.PUT_LINE('> 3 ó�� '); 
--EXCEPTION
END;

-- while   ������ ���� ���
-- for     ������ ���� ���
-- ������(2~9) ���
1) WHILE LOOP ~ END LOOP  ���  * 2

DECLARE
  vdan NUMBER(2):=2 ;
  vi NUMBER(2) := 1 ;
BEGIN
   -- vdan 2~9
   WHILE vdan <= 9
   LOOP
     -- 1~ 9
     vi := 1; -- ***
     WHILE vi <= 9
     LOOP
        -- 2*1=2
        DBMS_OUTPUT.PUT( vdan || '*' || vi || '=' || RPAD( vdan*vi, 4, ' ' ) );
        vi := vi + 1;
     END LOOP;  
     DBMS_OUTPUT.PUT_LINE('');
     vdan := vdan + 1;
   END LOOP; 

--EXCEPTION
END;

2) FOR LOOP ~ END LOOP  ���    * 2

DECLARE
  -- vdan NUMBER(2):=2 ;
  -- vi NUMBER(2) := 1 ;
BEGIN
  FOR vdan IN 2.. 9
  LOOP
    FOR vi  IN 1.. 9
    LOOP
       DBMS_OUTPUT.PUT( vdan || '*' || vi || '=' || RPAD( vdan*vi, 4, ' ' ) );
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('');
  END LOOP;
--EXCEPTION
END;




 
 
 
 
 
 
 


    
-- ������ �������
DECLARE
    vi NUMBER :=1; 
    vj NUMBER :=1;
    vsum NUMBER :=0;
    vvsum NUMBER :=0;
BEGIN
    WHILE (vj<10)
    LOOP
            WHILE (vi<10) 
            LOOP
            DBMS_OUTPUT.PUT(vj||'*'||vi||'+');
            vsum := vsum +vi*vj;
            vi:=vi+1;
            END LOOP;
            DBMS_OUTPUT.PUT_LINE('='||vsum);
         
            vsum:=0;
            vi:=1;
     
        vsum := vsum +vi*vj;
        vj:=vj+1;
        vsum:=0;
        
    END LOOP;
  --EXCEPTION
END;

    -- FOR   ������ ���� ���  
    
    
DECLARE
BEGIN
    FOR i IN 1..9 LOOP
    
        FOR j IN 1..9 LOOP
            DBMS_OUTPUT.PUT( i || ' * ' || j ||' = '||i*j);
             DBMS_OUTPUT.PUT( ', ');
        END LOOP;
        DBMS_OUTPUT.NEW_LINE;
    END LOOP;
--EXCEPTION
END;