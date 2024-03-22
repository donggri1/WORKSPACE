-- SCOTT

DESC insa;


--SQL ������ NOT IN ���
SELECT *
FROM insa
WHERE city IN( '����' ,'���', '��õ')
ORDER BY city ASC;

-- ������ : ���� ��� ��õ
SELECT *
FROM insa
WHERE city = '����' OR city = '���' OR city = '��õ'
ORDER BY city ASC;

SELECT *
FROM insa
WHERE NOT(city = '����' OR city = '���' OR city = '��õ')
WHERE city != '����' AND city != '���' AND city != '��õ'
ORDER BY city ASC;

SELECT *
FROM insa
WHERE city NOT IN( '����' ,'���', '��õ')
ORDER BY city ASC;

-- SCOTT


--[����] insa ���̺���  70������ �Ʒ��� ���� ���
--[������]
SELECT name
    ,CONCAT( SUBSTR(ssn,1,8),'******') RRN
    ,SUBSTR(ssn,1,8)||'******' RRN
    --,EXTRACT( YEAR FROM ��¥ )
FROM insa
-- '79' ->79 ����ȯ
WHERE TO_NUMBER(SUBSTR(ssn,1,2)) BETWEEN 70 AND 79;
WHERE SUBSTR(ssn,1,2) BETWEEN 70 AND 79;
WHERE SUBSTR(ssn,1,1)='7';

SELECT name
    ,substr(ssn,0,8) || '******' rrn
    ,TO_DATE(SUBSTR(ssn,0,2),)
    
--    ,substr(ssn,0,6)
--    ,to_date(substr(ssn,0,6))
--    ,extract (year from to_date(substr(ssn,0,6)) )
FROM insa
WHERE extract (year from to_date(substr(ssn,0,6)) ) between 1970 and 1979 ;

--[����] insa ���̺��� �����,�ֹε�Ϲ�ȣ, �⵵,��,��,���� ���
DESC insa;
SELECT *--771212-1022432
FROM insa;

SELECT name,ssn
    ,SUBSTR(ssn,1,2) YEAR
    ,SUBSTR(ssn,3,2) MONTH
    ,SUBSTR(ssn,5,2) "DATE" -- ������ ������
    ,SUBSTR(ssn,8,1) GENDER
FROM insa;

-- ����Ŭ�� ����� : DATE 
SELECT *
FROM dictionary
WHERE table_name LIKE '%\WORDS%\';
--
SELECT *
FROM V$RESERVED_WOREDS;
-- [����] emp ���̺��� �Ի�����(hiredate)�� 81�⵵�� ��� ���� ��ȸ(���)
-- [3]
--String hiredate = "80/12/17";
--String year =  hiredate.substring(0,2);
--year = "80";
���� 2:01 2024-02-15

SELECT 'abcdefg'
    ,SUBSTR('abcdefg',1,2) --ab 1 ù����
    ,SUBSTR('abcdefg',0,2) --ab 0 ù����
    ,SUBSTR('abcdefg',3) --cdefg
    -- -5,-1 ���� �ڿ��� ������ ��ġ��.
    ,SUBSTR('abcdefg',-5,3) --cde �ڿ������� 5��° 
    ,SUBSTR('abcdefg',-1,1) --g �ڿ������� 1��°  1��������
FROM dual;



SELECT ename, hiredate  -- '80/12/17'
    , SUBSTR( hiredate,1,2)
FROM emp;
WHERE

-- [2] DATE -> �Ի�⵵�� ������..

-- ���� ��¥�� ��/��/�� ��� : DATE(��), TIMESTAMP(���뼼����,�ð���)
-- �ڹ� : Date d = new Date();  Calendar c = Calendar.getInstance();
--          d.getYear()              c.get(Calendar.YEAR)

SELECT SYSDATE , CURRENT_TIMESTAMP 
    , EXTRACT( YEAR  FROM  SYSDATE ) -- 2024
    , TO_CHAR( SYSDATE, 'YYYY' )    -- '2024'
    , TO_CHAR( SYSDATE, 'YY' )    -- '2024'
    , TO_CHAR( SYSDATE, 'YEAR' )    -- 'TWENTY TWENTY-FOUR'
FROM dual;


SELECT ename, hiredate
FROM emp
WHERE EXTRACT( YEAR  FROM  hiredate ) = 1981;
--WHERE TO_CHAR( hiredate, 'YYYY' ) = '1981'; 

-- [1]
-- �� ������ : ����, ����, ��¥( '80/12/17' )
DESC emp;
-- HIREDATE          DATE  
SELECT ename, hiredate
FROM emp
WHERE hiredate BETWEEN '81/01/01' AND '81/12/31';
WHERE hiredate >= '81/01/01' AND hiredate <= '81/12/31';

���� 2:51 2024-02-15
-- [NOT] LIKE SQL������ ����
-- ������ ���� ��ġ ���� üũ�ϴ� ������
-- ���ϵ�ī�� ( % _ )
-- %    0~ ���� ��   ������ ������ �������(���ڿ� ���ã��*)�� ���
-- _    �� ���� ����
-- ���ϵ�ī��( % _ ) �� �Ϲ� ����ó�� ����Ϸ��� ESCAPE �ɼ��� ����϶�.. 

--[����] insa ���̺���  70������ �Ʒ��� ���� ���
SELECT name,ssn
FROM insa
WHERE ssn LIKE '7%';
--[����] insa ���̺���  12������ �Ʒ��� ���� ���
SELECT name,ssn
    ,SUBSTR(SSN,1,4)
    , TO_DATE(SUBSTR(SSN,1,4),'YYMM')
FROM insa
--WHERE SUBSTR(ssn,3,2)='12';
--WHERE EXTRACT(MONTH FROM TO_DATE(SUBSTR(SSN,1,4),'YYMM'))='12';
WHERE SSN LIKE '__12%';
WHERE SSN LIKE '7_12%';

-- [����] insa ���̺��� �达 ���� ���� ��� ��� ���
SELECT name,ssn
FROM insa
WHERE name LIKE '��%';

-- [����] insa ���̺��� �达 ���������� ��� ��� ���
SELECT name,ssn
FROM insa
WHERE name LIKE '_��_';
WHERE name LIKE '%��__';
WHERE name LIKE '_��%';
WHERE name LIKE '%��%';
WHERE name NOT LIKE '��%';

���ڿ��� ���� Ȯ��
��ŵ��� ����, �λ�, �뱸 �̸鼭 ��ȭ��ȣ�� 5 �Ǵ� 7�� ���Ե� �ڷ� ����ϵ� 
�μ����� ������ �δ� ��µ��� �ʵ�����. (�̸�, ��ŵ�, �μ���, ��ȭ��ȣ)

SELECT name,city
    ,LENGTH(buseo)
    ,SUBSTR(buseo,1,LENGTH(buseo)-1) buseo
    ,tel
FROM insa
--WHERE city IN('����','�λ�','�뱸')AND tel LIKE '%5%' OR '%7%';
WHERE city IN('����','�λ�','�뱸') AND (tel LIKE '%5%' OR tel LIKE '%7%') 

--
--�������� --
FROM ��Ʈ�����̺� 
WHERE �������÷� IN ('LG','�Ｚ','�����')
    AND
    CPU�÷� IN('�ھ�I~~����,'������)

-- [ LIKE �������� ESCAPE �ɼ� ���� ]
dept ���̺� ���� Ȯ��
DESC dept;
SELECT deptno,dname,loc
FROM dept;
10	ACCOUNTING	NEW YORK
20	RESEARCH	DALLAS
30	SALES	CHICAGO
40	OPERATIONS	BOSTON

-- SQL 5���� : DQL(SELECT), DDL, DML(INSERT, UPATE, DELETE) + �Ϸ� COMMIT, ��� ROLLBACK
--              DCLM, TCL

-- DML(INSERT) ���ο� �μ��� �߰�..

DESC dept;
INSERT INTO ���̺��[(�÷���,�÷�....)] VALUES ( ��,...);
COMMIT;
--ORA-00001: unique constraint (SCOTT.PK_DEPT) violated
--              ���ϼ� ��������    PK_DEPT(Primary key)
--INSERT INTO dept VALUES( 50, '�ѱ�_����' ,'COREA' );
INSERT INTO dept VALUES( 60, '�ѱ�_����' ,'COREA' );
SELECT *
FROM dept;

-- [����] dept ���̺��� �μ��� �˻��� �ϴ� ��
--                      �μ��� % �� �ִ� �μ������� ��ȸ
--                      �μ��� _ �� �ִ� �μ������� ��ȸ
SELECT *
FROM dept
WHERE dname LIKE '%\%%'ESCAPE '\';
WHERE dname LIKE '%_%';-- ���ϵ�ī����ν�

-- DML(INSERT, [UPATE] , DELETE) + �Ϸ� COMMIT, ��� ROLLBACK
UPDATE [��Ű��].���̺��
SET �÷�=��,�÷�=��...
[WHERE ������;] -- ��� ���ڵ� ����.

UPDATE scott.dept
SET LOC='XXX';
ROLLBACK;

UPDATE scott.dept
SET LOC='KOREA'
WHERE deptno = 60;
1 �� ��(��) ������Ʈ�Ǿ����ϴ�.
COMMIT;

UPDATE scott.dept
SET LOC='COREA', DNAME ='�ѱ۳���'
WHERE deptno = 60;
1 �� ��(��) ������Ʈ�Ǿ����ϴ�.
COMMIT;

--[����] 30�� �μ���, ������ -> 60�� �μ���,���������� UPDATE����
--ORA-00936: missing expression
UPDATE scott.dept
SET dname = (SELECT dname FROM dept WHERE deptno=30)  , loc =(SELECT loc FROM dept WHERE deptno=30)  
WHERE deptno= 60 ;
--
UPDATE scott.dept
SET (dname,loc)= (SELECT dname,loc FROM dept WHERE deptno=30) 
WHERE deptno= 60 ;
--
COMMIT;
ROLLBACK;

SELECT *
FROM dept;

-- DML(INSERT, [UPATE] , [DELETE]) + �Ϸ� COMMIT, ��� ROLLBACK
DELETE FROM [ ��Ű��.] ���̺��
[WHERE ������;] --������ ��緹�ڵ� ����

-- ORA-02292: integrity constraint (SCOTT.FK_DEPTNO) violated - child record found
DELETE FROM dept
WHERE deptno IN(50,60);
WHERE deptno = 50 OR deptno = 60;
COMMIT;
SELECT *
FROM emp;

--[����] EMP ���̺��� SAL�� 10%�� �λ��ؼ� ���ο� SAL�� �����ϼ���
UPDATE emp
SET sal = 1.1*sal;
ROLLBACK;

-- LIKE SQL ������ : % _ ���ϱ�ȣ
-- REGEXP_LIKE �Լ� : ����ǥ����
-- [����] insa ���̺��� ���� �达,�̾� �� ����� ��ȸ
SELECT *
FROM insa
WHERE REGEXP_LIKE(ssn, '^7[0-9]12')
WHERE REGEXP_LIKE( name, '^[^����]');
WHERE REGEXP_LIKE( name, '^[����]$');
WHERE REGEXP_LIKE( name, '^(��|��)');
WHERE REGEXP_LIKE( name, '^[����]');
WHERE name LIKE '��%' OR name LIKE '��%';
WHERE SUBSTR(name,1,1) IN ('��','��'); 
WHERE SUBSTR(name,1,1)= '��' OR SUBSTR(name,1,1)= '��';

-- [����] INSA ���̺��� 70��� ���� ����� ��ȸ...
-- ���� 1,3,5,7,9 ����
-- ������ ������ X , ������ �Լ� MOD()
SELECT name, ssn
FROM insa
WHERE REGEXP_LIKE (ssn,'^7\d{5}-[13579]');
WHERE ssn LIKE '7%' AND SUBSTR(ssn , 8,1) IN(1,3,5,7,9);
WHERE ssn LIKE '7%' AND MOD(SUBSTR(ssn , 8,1),2) =1;










--[1]
-- �񱳿����� : ����, ����, ��¥('80/12/18')
DESC emp;
SELECT ename,hiredate
FROM emp
WHERE hiredate BETWEEN'81/01/01' AND '81/12/31';
WHERE hiredate >='810101' AND hiredate <= '811231';
-- WHERE hiredate > TO_DATE('19810101','YYYYMMDD') AND hiredate < TO_DATE('19811231','YYYYMMDD')

