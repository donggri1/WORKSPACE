-- SCOTT
SELECT SYSDATE, CURRENT_TIMESTAMP
FROM dual;

-- [ dual ���� ]
SELECT SYSDATE
FROM dual;
--FROM emp;

DESC dual;  -- DUMMY    VARCHAR2(1) 

-- ���������
SELECT 5+3, 5-3, 5*3, 5/3, MOD(5,3)
-- ORA-01476: divisor is equal to zero
SELECT  MOD(5,0) --5/0
FROM dual;


--
SELECT *
FROM emp;
FROM scott.emp;

-- PUBLIC SYNONYM ����
-- ORA-01031: insufficient privileges
CREATE PUBLIC SYNONYM  arirang
FOR scott.emp;

-- [ ���⼭ YY�� RR�� ������: ]
--  �� RR�� YY�� �Ѵ� �⵵�� ������ ���ڸ��� ����� ������, 
--  �� ���� system���� ����� ��Ÿ������ �ϴ� �⵵�� ���⸦ ���� ���� �� ��µǴ� ���� �ٸ���.
--  �� [RR��] 
         -- �� �ý��ۻ�(1900���)�� �⵵�� �������� �Ͽ� ���� 50�⵵���� ���� 49������� ���س⵵�� ����� 1850�⵵���� 1949�⵵������ ������ ǥ���ϰ�, 
--          �� �� ������ ��� ��� �ٽ� 2100���� �������� ���� 50�⵵���� ���� 49������� ���� ����Ѵ�.
--
--  �� [YY��] ������ system���� �⵵(2000)�� ������.

SELECT TO_CHAR( SYSDATE, 'CC' ) -- 21����(2024�⵵)
FROM dual;

SELECT 
       '05/01/10'  -- ��¥,[���ڿ�]
       , TO_CHAR(  TO_DATE('05/01/10', 'YY/MM/DD') , 'YYYY' )  a_YY  -- 2005
       , TO_CHAR(  TO_DATE('05/01/10', 'RR/MM/DD') , 'YYYY' )  b_RR  -- 2005
FROM dual;

SELECT 
       '97/01/10'  -- ��¥,[���ڿ�]
       , TO_CHAR(  TO_DATE('97/01/10', 'YY/MM/DD') , 'YYYY' )  a_YY  -- 2097
       , TO_CHAR(  TO_DATE('97/01/10', 'RR/MM/DD') , 'YYYY' )  b_RR  -- 1997
FROM dual;
--
SELECT name, ibsadate
FROM insa;
-- ORDER BY �� 
-- 1�������� �μ����� �������� ���Ľ�Ų ��
-- 2�� ����  pay ���� �޴� ��� ������ 
SELECT deptno, ename, sal + NVL(comm,0) pay
FROM emp
ORDER BY 1 ASC, 3 DESC;
ORDER BY deptno ASC, pay DESC;

-- 
-- [����Ŭ ������ (operator) ����]
-- 1) �� ������ : WHERE ������ ����,��¥,����  ����,ũ�⸦ ���ϴ� ������.
--        =   != ^= <>      >   <    >=   <=
--   �� SQL ������   ANY, SOME, ALL
--      true, false , null
SELECT ename, sal
FROM emp
WHERE sal >= null;
WHERE sal <= 1250;
WHERE sal < 1250;
WHERE sal >= 1250;
WHERE sal > 1250;
WHERE sal != 1250;
WHERE sal = 1250;

ANY
SOME
ALL
-- p 226 ���� 4-12
SELECT *
FROM emp

--[����1] ��� ��ü���� �ְ� �޿��� �޴� ����� ������ ��ȸ(���) �����,�����ȣ �޿���, �μ���ȣ


SELECT MAX(sal+NVL(comm,0))
FROM emp

SELECT ename,empno,deptno
FROM emp
WHERE (sal+NVL(comm,0)) = (SELECT MAX(sal+NVL(comm,0)) FROM emp)


    --[����2] �� �μ��� �ְ� �޿��� �޴� ����� ������ ��ȸ(���)
SELECT *
FROM emp p
WHERE (sal+NVL(comm,0)) = (SELECT MAX(sal+NVL(comm,0)) 
                            FROM emp c
                            WHERE deptno=p.deptno)
    
    
    
    
    
    
    
    
    
    
    
    
    
    


--
����Ŭ �Լ�(function) ����
--
����Ŭ �ڷ���(data type) ����







