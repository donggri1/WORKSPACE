-- SCOTT
-- [1] insa ���̺��� �� �μ��� ����� ��ȸ
-- ��. SET ���� ������ UNION, UNION ALL
-- ��. ��� ��������
SELECT DISTINCT buseo
       , (  SELECT COUNT(*) CNT
            FROM insa
            WHERE buseo = p.buseo ) CNT
FROM insa p;
-- ��. WITH ��  
-- ��. GROUP BY ��
SELECT buseo, COUNT(*) CNT
FROM insa
GROUP BY buseo;

-- [2] emp ���̺��� �޿��� ���(RANK) + ( TOP 3 )
--  ��. TOP-N �м� ���
SELECT ROWNUM pay_rank
     , e.*
FROM (
        SELECT *
        FROM emp
        ORDER BY sal+NVL(comm,0) DESC
    ) e
WHERE ROWNUM <= 3    ;
--  ��. �ڹ� ���� ���
SELECT 
     ( SELECT COUNT(*)+1 FROM emp c WHERE  sal+NVL(comm,0) > (p.sal + NVL(p.comm,0)) ) pay_rank
     , p.*
FROM emp p
ORDER BY pay_rank ASC;
--  ��. RANK() OVER() ���� �Լ�
SELECT e.*
FROM (
        SELECT 
           RANK() OVER(ORDER BY sal+NVL(comm,0) DESC ) pay_rank
           ,emp.*
        FROM emp
    ) e
WHERE e.pay_rank BETWEEN 4  AND 6 ;     
WHERE e.pay_rank <= 1  ;    
WHERE e.pay_rank <= 3  ;

-- [3] insa ���̺��� ���ڻ����, ���ڻ���� ��ȸ...
-- ��. DECODE() ���
-- ORA-00937: not a single-group group function
SELECT COUNT(*) "��ü�����"
   , COUNT( DECODE( MOD( SUBSTR(ssn, 8, 1), 2 ), 1, '����' ) ) "���ڻ����"
   , COUNT( DECODE( MOD( SUBSTR(ssn, 8, 1), 2 ), 0, '����' ) ) "���ڻ����"
FROM insa;
-- Ǯ��)
SELECT 
       DECODE( MOD( SUBSTR(ssn, 8, 1), 2 ), 1 , 'O')
FROM insa;
--
SELECT 
     COUNT(*)
FROM insa
WHERE MOD( SUBSTR(ssn, 8, 1), 2 ) = 1;
-- ��. SET ���� ������
-- ��. GROUP BY �� ���.
SELECT 
       DECODE(  MOD(SUBSTR( ssn, 8, 1),2), 1, '���ڻ����', '���ڻ����') GENDER
      , COUNT(*) CNT
FROM insa
GROUP BY  MOD(SUBSTR( ssn, 8, 1),2)
UNION ALL
SELECT '��ü�����', COUNT(*)
FROM insa;
-- ORA-01789: query block has incorrect number of result columns
[������]
���ڻ����	31
���ڻ����	29
��ü�����   60
-- [4] emp �� �μ��� ����� ��ȸ
SELECT dname, COUNT(*) cnt  -- ORA-00979: not a GROUP BY expression
FROM emp e JOIN dept d ON d.deptno = e.deptno
GROUP BY dname
-- ORDER BY dname ASC  -- ORA-00918: column ambiguously defined
UNION ALL  -- ORA-00933: SQL command not properly ended
SELECT 'OPERATIONS', COUNT(*)
FROM emp
WHERE deptno = 40;
-- ORDER BY dname ASC ;
--
SELECT deptno, dname -- 40	OPERATIONS
FROM dept;
-- [4-2] ���� ������� �μ���ȣ�� �ƴ϶� �μ����� ���.
--dept : dname
--emp  :
-- ����(JOIN)
��)  �μ���ȣ, �μ���,�����,�Ի�����   ���
dept : deptno, dname
emp  : deptno, ename, hiredate
-- ORA-00918: column ambiguously defined
SELECT d.deptno, dname, ename, hiredate
FROM dept d JOIN emp e ON d.deptno = e.deptno;

--
SELECT dname, COUNT(empno)
FROM emp e RIGHT OUTER JOIN dept d ON e.deptno = d.deptno
GROUP BY dname;
--
SELECT COUNT(*)
     , COUNT(empno)
     , COUNT(hiredate)
     , COUNT(comm)
FROM emp;
--
SELECT COUNT(*)
   , COUNT( DECODE( deptno, 10, 'O' ) ) "10" 
   , COUNT( DECODE( deptno, 20, 'O' ) ) "20" 
   , COUNT( DECODE( deptno, 30, 'O' ) ) "30" 
   , COUNT( DECODE( deptno, 40, 'O' ) ) "40" 
FROM emp;

-- [5] insa ���̺��� "���� ��", "���� ��", "���� ����"
--   ( DECODE() �Լ� ��� )
SELECT num, name, ssn
  -- , TO_CHAR( TRUNC(SYSDATE), 'TS')
  , SIGN( TO_DATE( SUBSTR( ssn, 3,4) , 'MMDD') - TRUNC(SYSDATE) ) s
  , DECODE(SIGN( TO_DATE( SUBSTR( ssn, 3,4) , 'MMDD') - TRUNC(SYSDATE) ), 1, '���� ��', 0, '���� ����', '���� ��') r
  , CASE SIGN( TO_DATE( SUBSTR( ssn, 3,4) , 'MMDD') - TRUNC(SYSDATE) )
       WHEN 1 THEN '���� ��'
       WHEN 0 THEN '���� ����'
       ELSE        '���� ��'
    END  ��Ī1
  , CASE 
       WHEN TO_DATE( SUBSTR( ssn, 3,4) , 'MMDD') - TRUNC(SYSDATE) > 0 THEN '���� ��'
       WHEN TO_DATE( SUBSTR( ssn, 3,4) , 'MMDD') - TRUNC(SYSDATE) = 0 THEN '���� ����'
       ELSE '���� ��'
    END ��Ī2
FROM insa;

-- [5-2] emp ���̺���  10�� �μ��� sal 10% �λ�, 20�� �μ��� sal 15% �λ�, �� �� �μ��� 5% �λ�.
SELECT deptno, ename, sal
       , sal * DECODE( deptno, 10, 1.1 , 20, 1.15 , 1.05 ) sal�λ�ݾ�
       , sal * CASE deptno
                    WHEN 10 THEN 1.1
                    WHEN 20 THEN 1.15
                    ELSE 1.05        
               END  sal�λ�ݾ�
       , sal * CASE 
                    WHEN deptno=10 THEN 1.1
                    WHEN deptno=20 THEN 1.15
                    ELSE 1.05        
               END  sal�λ�ݾ� 
FROM emp;

--
SELECT *
FROM insa;
--  ��. 1002 �� ����� �ֹε�Ϲ�ȣ  800221-1544236   UPDATE ���� ���� + COMMIT
SELECT SYSDATE
    , TO_CHAR( SYSDATE, 'DD' )  -- 21
FROM dual;

UPDATE  insa
SET ssn =  SUBSTR( ssn, 1, 2) || TO_CHAR( SYSDATE, 'MMDD' ) || SUBSTR( ssn, 7) 
WHERE num IN ( 1001,  1002 );
-- 1 �� ��(��) ������Ʈ�Ǿ����ϴ�.
COMMIT;
--
SELECT *
FROM insa;
-- 11:02 ���� ����~~~ 
-- [����] insa ���̺��� �ѻ����, �����������, ���û��ϻ����, �����Ļ���� ���(��ȸ)
--      (    DECODE() �Լ� ���.   )
-- ��. 
SELECT COUNT(*) "�ѻ����"
   , COUNT( DECODE(s, 1, 'O') ) "�����������"
   , COUNT( DECODE(s, 0, 'O') ) "���û��ϻ����"
   , COUNT( DECODE(s, -1, 'O') ) "�����Ļ����"
FROM (
        SELECT num, name, ssn
          ,  SIGN( TO_DATE( SUBSTR( ssn, 3,4 ), 'MMDD' ) - TRUNC( SYSDATE ) ) s
        FROM insa
     ) t ;
-- ��. 
SELECT CASE s
           WHEN 1 THEN '���� ��'
           WHEN 0 THEN '���� ����'
           ELSE '���� ��'
       END || '�����'
       , COUNT(*)
FROM (
        SELECT num, name, ssn
          ,  SIGN( TO_DATE( SUBSTR( ssn, 3,4 ), 'MMDD' ) - TRUNC( SYSDATE ) ) s
        FROM insa
     ) t 
GROUP BY   s   ;

-- [����] emp ���̺��� ��� pay ���� ���ų� ���� ������� [�޿���]�� ���
-- 12:02 ��������~
-- ��. DECODE, CASE 
SELECT 
        SUM( DECODE(  SIGN( pay - avg_pay ) , 1 , pay ) )
        , SUM(
              CASE
                 WHEN pay - avg_pay > 0 THEN pay
                 ELSE                        NULL
              END
          )
FROM (
        SELECT empno, ename, sal+NVL(comm,0) pay
               , ( SELECT ROUND(AVG(sal+NVL(comm,0)),2) FROM emp ) avg_pay
        FROM emp 
     );
-- ��.
SELECT SUM( sal + NVL(comm,0))  pay
FROM emp
WHERE sal + NVL(comm,0) >= ( SELECT ROUND(AVG(sal+NVL(comm,0)),2) FROM emp );
-- ��. 
WITH  a AS (
         SELECT  TO_CHAR( AVG(sal+NVL(comm,0)), '9999.00' )  avg_pay
         FROM emp
     )
    , b AS (
        SELECT empno, ename, sal + NVL(comm,0) pay
        FROM emp
    )
SELECT SUM(b.pay)    
FROM a, b
WHERE b.pay >= a.avg_pay;

-- [����] emp, dept ���̺��� ����ؼ�
--       ����� �������� �ʴ� �μ��� �μ���ȣ,�μ����� �������.
-- ��.  ��� ���� ����
SELECT p.deptno, p.dname
FROM dept p 
--WHERE (SELECT COUNT(*) FROM emp WHERE deptno=p.deptno) =0;
 WHERE NOT EXISTS ( SELECT empno FROM emp WHERE deptno = p.deptno );

-- ��. 
WITH t AS (
        SELECT deptno
        FROM dept
        MINUS
        SELECT DISTINCT deptno
        FROM emp
)
SELECT t.deptno, d.dname
FROM t JOIN dept d ON t.deptno = d.deptno;
--
SELECT t.deptno, d.dname
FROM dept d JOIN (
                        SELECT deptno
                        FROM dept
                        MINUS
                        SELECT DISTINCT deptno
                        FROM emp
                ) t  
            ON   t.deptno = d.deptno;
            
-- ��. Ǯ��(  �� �μ��� ����� ��ȸ )
SELECT t.*
FROM ( 
            -- ORA-00979: not a GROUP BY expression
            SELECT d.deptno, d.dname, COUNT(empno) cnt
            FROM dept d LEFT OUTER JOIN emp e ON d.deptno = e.deptno
            -- WHERE cnt = 0  -- ORA-00904: "CNT": invalid identifier
            GROUP BY d.deptno, d.dname
            ORDER BY d.deptno
) t
WHERE t.cnt != 0;
WHERE t.cnt = 0;

-- ��. Ǯ�� HAVING ��
WITH
SELECT
FROM
WHERE
GROUP BY
   HAVING �� X
ORDER BY ;
-- 
SELECT d.deptno, d.dname, COUNT(empno) cnt
            FROM dept d LEFT OUTER JOIN emp e ON d.deptno = e.deptno
            -- WHERE cnt = 0  -- ORA-00904: "CNT": invalid identifier
            GROUP BY d.deptno, d.dname
            HAVING COUNT(empno)=0
            ORDER BY d.deptno
-- HAVING �� : GROUP BY ���� ������
-- [����] insa ���̺��� �� �μ��� ���ڻ������ �ľ��ؼ� 5�� �̻��� �μ� ���� ���.
--    ������   7
--    �ѹ���   5
SELECT buseo, COUNT(*) cnt
FROM insa
WHERE MOD( SUBSTR(ssn,8,1), 2 ) = 0
GROUP BY buseo
HAVING COUNT(*) >= 5
ORDER BY cnt DESC;

-- [����] emp ���̺��� �μ���, job�� ����� �ѱ޿��� ��ȸ
SELECT deptno, job
    , COUNT(*) cnt
    , SUM(  sal+NVL(comm,0) ) deptno_pay_sum
    , AVG(  sal+NVL(comm,0) ) deptno_pay_avg
    , MAX(  sal+NVL(comm,0) ) deptno_pay_max
    , MIN(  sal+NVL(comm,0) ) deptno_pay_min
FROM emp
GROUP BY deptno, job
ORDER BY deptno, job;

-- ( �ϱ� )  Oracle 10g   PARTITION OUTER JOIN ����
--CLERK
--SALESMAN
--PRESIDENT
--MANAGER
--ANALYST

WITH t AS (
              SELECT DISTINCT job
              FROM emp
           )
SELECT deptno, t.job, NVL(SUM( sal+NVL(comm,0) ),0) d_j_pay_sum
FROM t LEFT OUTER JOIN emp e PARTITION BY(deptno) ON t.job = e.job
GROUP BY deptno, t.job
ORDER BY deptno;

-- [ GROUPING SETS ��]
SELECT deptno, COUNT(*)
FROM emp
GROUP BY deptno;
--30	6
--20	3
--10	3

SELECT job, COUNT(*)
FROM emp
GROUP BY job;
--CLERK	    3
--SALESMAN	4
--PRESIDENT	1
--MANAGER	3
--ANALYST	1
SELECT deptno, job, COUNT(*)
FROM emp
GROUP BY GROUPING SETS(deptno, job);

-- [LISTAGG �Լ�]
SELECT ename
FROM emp
WHERE deptno = 10;
--CLARK,--KING, --MILLER
SELECT ename
FROM emp
WHERE deptno = 20;
--SMITH, --JONES, --FORD
SELECT ename
FROM emp
WHERE deptno = 30;
--ALLEN, --WARD, --MARTIN, --BLAKE, --TURNER, --JAMES

-- ( �ϱ� )
SELECT d.deptno   
   , NVL( LISTAGG(ename, ',') WITHIN GROUP( ORDER BY ename ), '����� �������� �ʽ��ϴ�.' ) ������  -- ename��  LIST ��� ����
FROM dept d LEFT JOIN emp e ON d.deptno = e.deptno
GROUP BY d.deptno;
-- 
SELECT *
FROM salgrade; -- �޿� ��� ���̺�
--grade  losal ~ hisal
--1	    700	    1200
--2	    1201	1400
--3	    1401	2000
--4	    2001	3000
--5	    3001	9999

SELECT ename, sal 
   ,  CASE
        WHEN  sal BETWEEN 700 AND 1200 THEN  1
        WHEN  sal BETWEEN 1201 AND 1400 THEN  2
        WHEN  sal BETWEEN 1401 AND 2000 THEN  3
        WHEN  sal BETWEEN 2001 AND 3000 THEN  4
        WHEN  sal BETWEEN 3001 AND 9999 THEN  5
      END grade
FROM emp;

-- 3:02 ���� ����
-- [ salgrade ���̺� + emp ���̺� ����]
--salgrade : grade
--emp : ename, sal 
SELECT ename, sal, grade, losal, hisal
FROM emp , salgrade 
WHERE sal BETWEEN losal AND hisal;
-- JOIN ON ����             NON ���� ����
SELECT ename, sal, losal  || '~' || hisal, grade
FROM emp JOIN salgrade  ON sal BETWEEN losal AND hisal;

-- [���� ǥ���� ����Ŭ �Լ�]
SELECT *
FROM insa
WHERE REGEXP_LIKE( ssn, '^7\d*');
WHERE ssn LIKE '7%';  -- ���ϵ�ī��( % _ )
-- REGEXP_INSTR()
-- REGEXP_SUBSTR()
-- REGEXP_REPLACE()

-- [ ���� �Լ� ]
-- 1) RANK() 
-- 2) DENSE_RANK()
-- 3) PERCENT_RANK()
-- 4) ROW_NUMBER()
-- 5) FIRST()/ LAST()

-- [����] emp ���̺���  sal  ���� �Űܺ���. 
SELECT empno, ename, sal
     , RANK() OVER(ORDER BY sal DESC) r_rank
     , DENSE_RANK() OVER(ORDER BY sal DESC) dr_rank
     , ROW_NUMBER() OVER(ORDER BY sal DESC) rn_rank
FROM emp;
--7654	MARTIN	1250	9	9	9
--7521	WARD	1250	9	9	10
--7900	JAMES	950	    11	10	11

--DENSE ������, ������~
SELECT deptno, empno, ename, sal
     , RANK() OVER( PARTITION BY deptno ORDER BY sal DESC) r_rank
     , DENSE_RANK() OVER( PARTITION BY deptno ORDER BY sal DESC) dr_rank
     , ROW_NUMBER() OVER( PARTITION BY deptno ORDER BY sal DESC) rn_rank
FROM emp;

-- [����] emp ���̺��� 
--      �� ����� �޿��� ��ü ����, �μ��� ������ ���.
SELECT deptno, ename, sal + NVL(comm, 0) pay
   , RANK() OVER(ORDER BY sal + NVL(comm, 0) DESC)  ��ü����
   , RANK() OVER( PARTITION BY deptno ORDER BY sal + NVL(comm, 0) DESC)  �μ�������
FROM emp
ORDER BY deptno ASC;

-- [ROLLUP/CUBE ������]
-- INSA ���̺���
--   ���ڻ����:31��
--   ���ڻ����:29��
--   ��ü�����:60��
-- 4:06 ���� ����~~ 
-- ��.
SELECT '���ڻ����', COUNT(*)
FROM insa
WHERE MOD( SUBSTR(ssn, -7,1), 2  ) = 1 
UNION ALL
SELECT '���ڻ����', COUNT(*)
FROM insa
WHERE MOD( SUBSTR(ssn, -7,1), 2  ) = 0 
UNION
SELECT '��ü�����',  COUNT(*)
FROM insa;
-- ��.
SELECT 
 DECODE(MOD( SUBSTR(ssn, -7,1), 2  ), 1, '����','����') || '�����' gender
 , COUNT(*)
FROM insa
GROUP BY MOD( SUBSTR(ssn, -7,1), 2  )
UNION
SELECT '��ü�����',  COUNT(*)
FROM insa;
-- ��.
SELECT 
   COUNT(*)
  ,COUNT(DECODE())
  ,COUNT(DECODE())
FROM insa;

-- 
SELECT 
 DECODE(MOD( SUBSTR(ssn, -7,1), 2  ), 1, '����', 0,'����', '��ü') || '�����' gender
 , COUNT(*)
FROM insa
GROUP BY CUBE( MOD( SUBSTR(ssn, -7,1), 2  ) ); 
GROUP BY ROLLUP( MOD( SUBSTR(ssn, -7,1), 2  ) ); --  �м��Լ�

-- ��2) 
SELECT buseo, jikwi
  , COUNT(*) cnt
--  , SUM( basicpay ) ���޺��޿���
FROM insa
GROUP BY   buseo, ROLLUP(jikwi )
-- GROUP BY  ROLLUP( buseo, jikwi )
-- GROUP BY  CUBE( buseo, jikwi )
ORDER BY buseo;

-- [����] emp ���̺��� ���� ���� �Ի��� ����� ���� �ʰ�(�ֱ�)�� �Ի��� ����� ���� ��ȸ
--       �Ի��� ���� �ϼ� ? 
SELECT 
    -- ename, hiredate
    MAX(hiredate)
    , MIN(hiredate)
    ,  MAX(hiredate) - MIN(hiredate)
FROM emp;
-- [2]
SELECT ename, hiredate 
FROM emp
ORDER BY hiredate DESC;
-- ROW_NUMBER()
WITH a AS (
    SELECT hiredate
    FROM (
        SELECT hiredate
        , ROW_NUMBER() OVER(ORDER BY hiredate DESC) h_rank
        FROM emp
    ) e
    WHERE h_rank = 1 
), 
b AS (
    SELECT hiredate
    FROM (
        SELECT hiredate
        , ROW_NUMBER() OVER(ORDER BY hiredate ASC) h_rank
        FROM emp
    ) e
    WHERE h_rank = 1
)
SELECT a.hiredate - b.hiredate
FROM a, b;
-- ORDER BY hiredate DESC;

-- ���� ���� !~~~~
-- [����] insa ���̺��� �� ������� �����̸� ����ؼ� ���...
--  1) ������ = ���س⵵ - ���ϳ⵵      (���������� ���� X   -1 )
--      ��. ���� ������ ����
--      ��. 981223-1XXXX
--                 12    1900   34  2000  89 1800






  




