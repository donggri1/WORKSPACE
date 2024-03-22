
SELECT deptno
        ,COUNT(*)
        ,SUM( sal+NVL(comm,0)) 
        ,AVG( sal+NVL(comm,0)) 
        ,MAX( sal+NVL(comm,0)) 
        ,MIN( sal+NVL(comm,0)) 
FROM emp
GROUP BY deptno     -- GROUP BY �� �����Լ��� �ݵ�û��
ORDER BY deptno;

SELECT deptno,empno,ename,sal + NVL(comm,0) pay
    ,(
      SELECT COUNT (*) +1
      FROM emp c 
      WHERE c.sal+NVL(comm,0)> p.sal+NVL(comm,0)
      ) pay_rank
FROM emp p 
--ORDER BY pay DESC;

���� 10:28 2024-02-19

--[SET ���� ������]
1) ������ (UNION, UNION ALL)
SELECT name,city,buseo
FROM insa
WHERE buseo = '���ߺ�' 
--UNION   -- 6���� �ߺ��ȴ�. ���� 1���� ����
UNION ALL --23
SELECT name,city,buseo
FROM insa
WHERE city= '��õ'; -- 9��
2) ������ (MINUS)

SELECT name,city,buseo
FROM insa
WHERE buseo = '���ߺ�' 
MINUS
SELECT name,city,buseo
FROM insa
WHERE city= '��õ'; -- 9��

3) ������ (INTERSECT)
-- ���ߺ� �̸鼭 ��õ�� ������� �ľ�
--[1]
SELECT name,city,buseo
FROM insa
WHERE buseo = '���ߺ�' AND city = '��õ';

SELECT name,city,buseo
FROM insa
WHERE buseo = '���ߺ�' 
INTERSECT
SELECT name,city,buseo
FROM insa
WHERE city= '��õ'; -- 9��


-- [SET (����) �����ڸ� ����� �� ������ ��]
--ORA-01790: expression must have same datatype as corresponding expression 
--ORA-01789: query block has incorrect number of result columns
SELECT name,city,buseo --60��, 18������ ���� �߻�
FROM insa
WHERE buseo = '���ߺ�' 
--UNION   -- 6���� �ߺ��ȴ�. ���� 1���� ����
UNION ALL --23
SELECT name,city --,jikwi--,basicpay
FROM insa
WHERE city= '��õ'; -- 9��
-- insa ���̺��� ��� ���� + emp ���̺��� ��� ���� ��� ���.
SELECT buseo,num,name,ibsadate,basicpay,sudang
FROM insa
UNION ALL
SELECT TO_CHAR(deptno),empno,ename,hiredate,sal,comm
FROM emp;

--MULTISET EXCEPT
--MULTISET INTERSECT
--MULTISET UNION

-- [������ ���� ������]
-- PRIOR, CONNECT_BY_ROOT

--[���� ������] || 

--[��� ������] + - / *
--           ������ ���ϴ� ������ X
--           ������ ���ϴ� �Լ� MOD(5,3) *****  5-3*FLOOR(5/3)
--           ������ ���ϴ� �Լ� REMAINDER(5,3)  5-3*ROUND(5/3)

SELECT 
--10/0 - ORA-01476: divisor is equal to zero
--'A'/2 --ORA-01722: invalid number
    MOD(10,0)
FROM dual;

IS[NOT] NAN Not A Number
IS[NOT] INFINITE

--����Ŭ �Լ�(FUNCTION)
--1. ������ �������� �����ϰ� ���ְ� �������� ���� �����ϴµ� ���Ǵ� ��
--2. ���� : (Single row)������ �Լ�, (Group)������ �Լ�
SELECT LOWER(ename)
FROM emp;

SELECT COUNT(*)
FROM emp;

-- [���� �Լ�] --
-- 1) ROUND(number) ���ڰ��� Ư�� ��ġ���� [�ݿø�]�Ͽ� �����Ѵ�.
-- ���� ROUND(number,n) n = 0 , ����, ��� 
SELECT 3.141592
      ,ROUND( 3.141592 ) A-- �Ҽ��� ù ��° �ڸ����� �ݿø�.
      ,ROUND( 3.141592,0) B-- n�� ������ ���� ����.
      ,ROUND( 3.141592,2) C-- �Ҽ��� �� ��° �ڸ����� �ݿø�
      ,ROUND( 1234.5678,2) D-- �Ҽ��� ù ��° �ڸ����� �ݿø�.
      ,ROUND( 1234.5678,-1) E
      ,ROUND( 1234.5678,-2) E
      ,ROUND( 1234.5678,-3) E
FROM dual;

-- [����] emp ���̺��� pay, ��� �޿�,�� �޿���,����� ���
--ORA-00937: not a single-group group function
SELECT sal+NVL(comm,0) pay
        --,AVG(sal+NVL(comm,0)
        ,COUNT(*)
FROM emp;

SELECT sal+NVL(comm,0) pay
        --,AVG(sal+NVL(comm,0)
        ,(SELECT COUNT(*) FROM emp) total_cnt
        --,SUM(sal+NVL(comm,0))
        ,(SELECT SUM(sal+NVL(comm,0)) FROM emp) total_pay
--        ,��� �޿� ����ؼ� �Ҽ��� 2�ڸ� ���� �������.
        ,(SELECT SUM(sal+NVL(comm,0))/COUNT(*) FROM emp) avg_pay
        ,ROUND((SELECT AVG(sal+NVL(comm,0)) FROM emp),2) avg_pay
FROM emp;

-- [�����Լ�] -- NULL ���� ������ ������ ��ȯ
SELECT COUNT (*)
      ,COUNT(empno)
      ,COUNT(deptno)
      ,COUNT(sal)
      ,COUNT(hiredate)
      ,COUNT(comm)
FROM emp;
--��� Ŀ�̼� ?
SELECT AVG(comm) -- 550
SELECT SUM(comm)/COUNT(*)
        ,SUM(comm)/COUNT(comm)
FROM emp;

TRUNC(number) ���ڰ��� Ư�� ��ġ���� �����Ͽ� �����Ѵ�. 
-- TRUNC (��¥,����), FLOOR (����) �����ϴ� 2���� �Լ�.
-- ������? �ι�° ��������
--          TRUNC() ��  Ư����ġ���� �����̰���
--          FLOOR() ��  �Ҽ��� �Ҽ��� ù ���� �ڸ������� �����̰���

SELECT 3.141592
    ,TRUNC(3.141592)   --�Ҽ��� ù ��° �ڸ����� ���� ����.
    ,TRUNC(3.141592,0) --�Ҽ��� ù ��° �ڸ����� ���� ����
    ,FLOOR(3.141592)
    
    ,TRUNC(3.141592,3)
    ,FLOOR(3.141592*1000)/1000    
    ,TRUNC(3.141592,-1)
    
FROM dual

CEIL ���ڰ��� �Ҽ��� ù°�ڸ����� �ø��Ͽ� �������� �����Ѵ�. 

SELECT CEIL(3.14),CEIL(3.64)
FROM dual;

-- 3.141592 �� �Ҽ��� ����° �ڸ����� �ø�����
SELECT CEIL(3.141592*100 )/100 -- 3.14
FROM dual;
-- ������������ ����� �� CEIL() �ø�(����)�Լ��� ����Ѵ�.
-- �� �Խñ�(���) �� :
-- �� �������� ����� �Խñ� (���) �� : 5
SELECT COUNT(*) FROM emp;
SELECT (SELECT COUNT(*) FROM emp)/5 ����������
FROM dual
SELECT CEIL((SELECT COUNT(*) FROM emp)/5) ����������
FROM dual

SELECT *
FROM emp
ORDER BY sal+NVL(comm,0) DESC;

FLOOR ���ڰ��� �Ҽ��� ù°�ڸ����� �����Ͽ� �������� �����Ѵ�. 
MOD ���������� �����Ѵ�. 
--ABS ���ڰ��� ���밪�� �����Ѵ�. 
SELECT ABS(100),ABS(-100) -- ���밪 ���ϴ� �Լ�
FROM dual

--SIGN ���ڰ��� ��ȣ�� ���� 1, 0, -1�� ������ �����Ѵ�. 

SELECT SIGN(100),SIGN(0),SIGN(-100)
FROM dual;
--[����] emp ���̺��� ��� �޿��� ���ؼ�
-- �� ����� �޿� pay�� ��� �޿����� ������ "��ձ޿����� ����" ��� ����ϰ�
-- �� ����� �޿��� ��պ��� ������ ��ձ޿����� ���� ��� ���

SELECT AVG(sal+NVL(comm,0))
FROM emp;

--[3]
-- [3]
SELECT ename, pay, avg_pay
     , NVL2( NULLIF( SIGN( pay - avg_pay ), 1 ), '����' , '����') 
FROM (
        SELECT ename, sal+NVL(comm,0) pay 
            , (SELECT AVG( sal + NVL(comm,0 )) avg_pay FROM emp) avg_pay
        FROM emp
      );

--
---**** TBL_TEL ���̺� �����
---
        
--[2]
SELECT ename,sal+NVL(comm,0)pay
    ,(SELECT AVG(sal+NVL(comm,0)) avg_pay FROM emp)avg_pay
    ,SIGN(sal+NVL(comm,0)-(SELECT AVG(sal+NVL(comm,0)) avg_pay FROM emp)) s
    ,REPLACE(REPLACE(SIGN(sal+NVL(comm,0)-(SELECT AVG(sal+NVL(comm,0)) avg_pay FROM emp)),-1,'����'),1,'����')
FROM emp;
-- [1]
SELECT s.*,  '����'
FROM emp s
WHERE sal + NVL(comm,0 ) > (SELECT AVG( sal + NVL(comm,0 )) avg_pay
                            FROM emp)
UNION                            
SELECT s.*,  '����'
FROM emp s
WHERE sal + NVL(comm,0 ) < (SELECT AVG( sal + NVL(comm,0 )) avg_pay
                            FROM emp);

SELECT 
    SIGN((sal+NVL(comm,0)-AVG(sal+NVL(comm,0)))
FROM emp 
WHERE sal+NVL(comm,0) pay

SELECT 
    (sal+NVL(comm,0))-(SELECT AVG(sal+NVL(comm,0))
                        FROM P.emp)  
FROM EMP P
WHERE sal+NVL(comm,0) pay



SELECT 
    pay-(SELECT AVG(pay))
                        FROM P.emp)  
FROM EMP P
WHERE sal+NVL(comm,0) pay

-- POWER(n1,n2) n1^n2�� ���������� �����Ѵ�. 
SELECT POWER(2,3),POWER(2,-3)
    ,SQRT(2)
FROM dual;

--SQRT(n) n�� ������ ���� �����Ѵ�. 
--SIN(n) n�� sine ���� �����Ѵ�. 
--COS(n) n�� cosine ���� �����Ѵ�. 
--TAN(n) n�� tangent ���� �����Ѵ�. 
--SINH(n) n�� hyperbolic sine ���� �����Ѵ�. 
--COS(n) n�� hyperbolic cosine ���� �����Ѵ�. 
--TAN(n) n�� hyperbolic tangent ���� �����Ѵ�. 
--LOG(a,b) ���� a�� b�� ���� ���� �����Ѵ�. ��, ���� ���� ���� ���� �� ��������� �˸� 
--LN(n) n�� �ڿ��α� ���� �����Ѵ�. 

-- [ �����Լ� ] 
--UPPER ���� �ҹ��ڸ� �빮�ڷ� �ٲپ� �����Ѵ�. 
--LOWER ���� �빮�ڸ� �ҹ��ڷ� �ٲپ� �����Ѵ�. 
--INITCAP ���ڿ��� �� �ܾ��� ù���ڸ� �빮�ڷ� �ٲپ� �����Ѵ�. 
--LENGTH ���ڿ��� ���̸� ���ڰ����� �����Ѵ�.
--LENGTHB, LENGTHC, LENGTH2, LENGTH4�� ���� 
--CONCAT ù��° ���ڿ��� �ι�° ���ڿ��� �����Ͽ� �����Ѵ�. ���� ������(??) ���� 
--SUBSTR ���ڰ� �� Ư�� ��ġ���� Ư�� ���̸�ŭ�� ���ڰ����� �����Ѵ�.
--SUBSTRB, SUBSTRC, SUBSTR2, SUBSTR4 
--INSTR ���ڰ� �� ������ ���ڰ��� ��ġ�� ���ڷ� �����Ѵ�. 
SELECT INSTR('Corea','e') --4
FROM dual;

SELECT INSTR('corporate floor','or')  --2
      ,INSTR('corporate floor','or',3,2) -- 14
      ,INSTR('corporate floor','or',-3,2) -- 2 �ڿ��� 3��°���� 2��° ���� OR ���ڿ�
FROM dual;

SELECT '02-123-5678' hp
        ,INSTR('02-1234-5678','-')"ù��°-��ġ"
        ,INSTR('02-1234-5678','-',-1)"�ι�°-��ġ"
        ,SUBSTR('02-1234-5678',1,INSTR('02-1234-5678','-')-1)a--010
        ,SUBSTR('02-1234-5678',INSTR('02-1234-5678','-')+1,)b --1234
            ,INSTR('02-1234-5678','-',-1)-1-(INSTR('02-1234-5678','-')_1))
        ,SUBSTR('02-1234-5678',INSTR('02-1234-5678','-',-1)+1,4)c --5678
FROM dual;

DESC tbl_tel;
SELECT*
FROM tbl_tel;
--
INSERT INTO tbl_tel(tel,name) VALUES('063)469-4567','ū����');
INSERT INTO tbl_tel(tel,name) VALUES('063)1456-2367','��°����');
COMMIT;
-- ������ȣ / ���ڸ� ��ȭ��ȣ / ���ڸ� ��ȭ��ȣ

SELECT 
    INSTR(tel,')') ù��° 
    ,INSTR(tel,'-') �ι�°
    ,SUBSTR(tel,0,INSTR(tel,')')-1)
    ,SUBSTR(tel,INSTR(tel,')')+1,(INSTR(tel,'-')-INSTR(tel,')')-1))
    ,SUBSTR(tel,INSTR(tel,'-')+1)
FROM tbl_tel;



--RPAD ������ ���̿��� ���ڰ��� ä��� ���� ������ ��(��)������ Ư�������� ä�� �����Ѵ�.LPAD 
    -- PAD == �� ��� ��, �޿� �ִ� �� , �е�
    -- ����) RPAD(expr1,n[,expr2])
    SELECT ename, pay
        ,RPAD(pay,10,'*')
        ,LPAD(pay,10)
        ,LPAD(pay,10,'*')
    FROM(
            SELECT ename,sal+ NVL ( comm,0)pay
            FROM emp
        )T;



--RTRIM ���ڰ��߿��� ��(��)�����κ��� Ư�����ڿ� ��ġ�ϴ� ���ڰ��� �����Ͽ� �����Ѵ�.LTRIM 
SELECT '   admin     '
        ,'[' || '   admin     ' || ']'
        ,'[' || RTRIM('   admin     ') || ']'
        ,'[' || LTRIM('   admin     ') || ']'
        ,'[' || TRIM('   admin     ') || ']'
FROM dual;

SELECT RTRIM('BROWINGuxXxy','xy') a
      ,RTRIM('BROWINGuxXxyxyxy','xy')S
      ,LTRIM('xyYXBROWINGuxXxyxyxy','xy')C
      --,TRIM('xyBROWINGuxXxyxyxy','xy') --ORA-00907: missing right parenthesis
      ,LTRIM('xyxYBROWINGuxXxyxyxy','xy')
      ,RTRIM( LTRIM('xyxYBROWINGuxXxyxyxy','xy'),'xy')
FROM dual;


--ASCII(char) ������ ���ڳ� ���ڸ� ASCII �ڵ尪���� �ٲپ� �����Ѵ�.(������ ���, �����ο��ȣ�� ����Ѵ�) 

SELECT ename
      ,SUBSTR(ename,1,1)
      ,ASCII(SUBSTR(ename,1,1))
      ,CHR(ASCII(SUBSTR(ename,1,1)))
FROM emp
--
SELECT ASCII('A'),ASCII('a'),ASCII('0')
FROM dual


--CHR(n) ASCII �ڵ尪�� n���� �ش��ϴ� ���ڷ� �ٲپ� �����Ѵ�.(CHR(75)='F'��) 
--GREATEST(a1,a2,a3) ������ ���ڳ� �����߿��� ���� ū ���� �����Ѵ�. 
SELECT GREATEST(3,5,2,4,1)
      ,GREATEST('R','A','Z','X')
      ,LEAST(3,5,2,4,1)
      ,LEAST('R','A','Z','X')
FROM dual;

--LEAST(a1,a2,a3) ������ ���ڳ� �����߿��� ���� ���� ���� �����Ѵ�. 
--REPLACE(a1,a2,a3) a1: �������ڿ�
a2: ��ü ���ڿ� a1�߿��� �ٲٱ⸦ ���ϴ� ���ڿ�
a3: �ٲٰ��� �ϴ� ���ο� ���ڿ� 
--VSIZE(char) ������ ���ڿ��� ũ�⸦ ���ڰ����� �����Ѵ�. 

--VSIZE()
SELECT ename
      ,VSIZE(ename)
      ,VSIZE('ȫ�浿')
      ,VSIZE('a')
      ,VSIZE('')
FROM emp;

--[��¥ �Լ�]
--SYSDATE ������ ��¥�� �ð��� �����Ѵ�. ��¥ 
SELECT SYSDATE
FROM dual;
ROUND(date) ������ �������� ��¥�� �ݿø��Ͽ� �����Ѵ�. ��¥ 

SELECT SYSDATE
    ,ROUND(SYSDATE) -- �������� ��¥ �ݿø� 
    ,ROUND(SYSDATE,'DD') b -- �ݿø� / 24/02/20  ���� ���� ��¥ �ݿø�
    ,ROUND(SYSDATE,'MONTH') -- ������ �ݿø�
    ,ROUND(SYSDATE,'YEAR') -- ����� �ݿø�
FROM dual;
TRUNC(date) ��¥���� �ð��κ��� �����Ͽ� 00:00���� �ٲپ��ִ� �Լ� ��¥ 
SELECT SYSDATE 
    ,TO_CHAR(SYSDATE,'YYYY.MM.DD.HH24.MI.SS')
    ,TRUNC(SYSDATE) -- �ð� �� �� ����
    ,TRUNC(SYSDATE,'DD')
    ,TO_CHAR(TRUNC(SYSDATE),'YYYY.MM.DD.HH24.MI.SS')
    ,TRUNC(SYSDATE,'MONTH')
    ,TRUNC(SYSDATE,'YEAR')
FROM dual;

--��¥ + ���� ��¥ ��¥�� �ϼ��� ���Ͽ� ��¥ ��� 
SELECT SYSDATE +100
FROM dual;
--��¥ - ���� ��¥ ��¥�� �ϼ��� ���Ͽ� ��¥ ��� 
SELECT SYSDATE -100
FROM dual;
--��¥ + ����/24 ��¥ ��¥�� �ð��� ���Ͽ� ��¥ ��� 
SELECT SYSDATE 
    ,TO_CHAR(SYSDATE,'YYYY/MM/DD HH24:MI:SS')
    , SYSDATE + 2/24
    , TO_CHAR(SYSDATE+2/24, 'YYYY/MM/DD HH24:MI:SS')
FROM dual;


--��¥ - ��¥ �ϼ� ��¥�� ��¥�� ���Ͽ� �ϼ� ��� 
SELECT SYSDATE -100/24
FROM dual;

--[����] �Ի��� ��¥���� ���� ��¥���� �ٹ��� �ϼ� ����?

SELECT ename
    ,hiredate
    ,SYSDATE
    ,CEIL(SYSDATE- hiredate)
    ,TRUNC(SYSDATE+1)-TRUNC(hiredate)
FROM emp;

--[����] 24�� 2�� ��������¥ �� �� ����?
[2] LAST_DAY() �Լ�
SELECT SYSDATE
    -- �Ű����� ��¥�� ������ ��¥ ��ȯ�ϴ� �Լ�
    ,LAST_DAY(SYSDATE) --24/02/29
    ,TO_CHAR(LAST_DAY(SYSDATE) , 'DD')
FROM dual;
[1]
SELECT SYSDATE a --24/02/19
--        ,TRUNC(SYSDATE,'DD')  �ð� ��������
          ,TRUNC(SYSDATE,'MONTH') b--        24/02/01
          -- �Ѵ� ���ϱ�
--          , ADD_MONTHS(TRUNC(SYSDATE,'MONTH'),-1)
--          , ADD_MONTHS(TRUNC(SYSDATE,'MONTH'),1)
          , ADD_MONTHS(TRUNC(SYSDATE,'MONTH'),1)-1
         -- ,TO_CHAR( ADD_MONTHS(TRUNC(SYSDATE,'MONTH'),1),-1)'DD')
FROM dual;

--[����] �����Ϸκ��� ���ó�¥���� �ϼ� ?
-- 2024.12.29 ����
-- 2024.06.14 ����
SELECT  SYSDATE
        ,'2023.12.29'
        ,TO_DATE('2023.12.29')
        ,SYSDATE-TO_DATE('2023.12.29')
        ,CEIL(SYSDATE-TO_DATE('2023.12.29'))
        ,ABS(CEIL(SYSDATE-TO_DATE('2023.12.29')))
FROM dual;

SELECT  SYSDATE
        ,'2024.06.14'
        ,TO_DATE('2024.06.14')
        ,SYSDATE-TO_DATE('2024.06.14')
        ,CEIL(SYSDATE-TO_DATE('2024.06.14'))
        ,ABS(CEIL(SYSDATE-TO_DATE('2024.06.14')))
FROM dual;
--[����] ���ó�¥���� �����ϱ��� ���� �ϼ� ?
-- 2024.06.14

-- NEXT_DAY() �Լ�
SELECT SYSDATE
    ,TO_CHAR( SYSDATE,'YYYY/MM/DD(DY)') a
    ,TO_CHAR( SYSDATE,'YYYY/MM/DD(DAY)') a
    -- ���� ����� �ݿ��ϳ� �������
    ,NEXT_DAY(SYSDATE,'��')
    ,NEXT_DAY(SYSDATE,'��')
FROM dual;
-- [����] 4�� ù ��° ȭ���� ������
SELECT SYSDATE
    ,TO_DATE('2024/04.01')-1
    ,NEXT_DAY(TO_DATE('2024/04.01')-1,'ȭ')
    ,NEXT_DAY(TO_DATE('2024/04.01')-1,'��')
FROM dual;
-- MONTHS_BETWEEN() �� ��¥������ ���� �� ��ȯ�ϴ� �Լ�
SELECT ename,hiredate
        , SYSDATE
        , CEIL(ABS(hiredate-SYSDATE) )�ٹ��ϼ�
        , MONTHS_BETWEEN(SYSDATE,hiredate) �ٹ�������
        , ROUND( MONTHS_BETWEEN(SYSDATE,hiredate)/12,2) �ٹ����
FROM emp;

--ADD_MONTHS Ư�� ���� ���� ���� ��¥�� �����ϴ� �Լ� ��¥ 
--LAST_DAY Ư�� ��¥�� ���� ���� ���� ������ ��¥�� �����ϴ� �Լ� ��¥ 
--NEXT_DAY ��õ� ������ ���ƿ��� ���� �ֱ��� ��¥�� �����ϴ� �Լ� ��¥ 

SELECT SYSDATE
        ,CURRENT_DATE
        ,CURRENT_DATE
FROM dual;





SELECT *
FROM tabs;


--[��ȯ �Լ�]
--1)TO_NUMBER ���� Ÿ���� ���� Ÿ������ ��ȯ 
SELECT '12'
      , TO_NUMBER('12 ')
      , 100-'12'
      ,'100'-'12'
FROM dual;

--2)TO_CHAR(number) ����, ��¥ Ÿ���� ���� Ÿ������ ��ȯ, TO_CHAR(character),TO_CHAR(datetime) 
--[ ����] insa���̺��� PAY �� ���ڸ����� �޸��� ����ϰ� �տ� ��ȭ ��ȣ�� ������
SELECT num,name
        ,basicpay,sudang
        ,basicpay + sudang pay
        ,TO_CHAR(basicpay + sudang ,'L9,999,999')
FROM insa;
--
SELECT 12345
      ,TO_CHAR( 12345 ) -- '12345'
      ,TO_CHAR( 12345,'9,999' ) -- #####
      
      ,TO_CHAR( 12345,'99,999' ) -- '12345'
      ,TO_CHAR( 12345,'FM99,999.99' ) -- '12345'
      ,TO_CHAR( 12345.127,'99,999.00' ) -- '12345'
FROM dual;

SELECT TO_CHAR(-100,'9999PR')
        ,TO_CHAR(-100,'9999MI')
        ,TO_CHAR(-100,'S9999')
        ,TO_CHAR(100,'S9999')
FROM dual;

--����
--��ȯ �Լ�
--1) TO_NUMBER(0 X
--2) TO_CHAR(NUMBER) O , TO_CHAR(DATETIME) X

TO_DATE ����, ���� Ÿ���� ��¥ Ÿ������ ��ȯ 
CONVERT ���ڿ��� �� ������ ��� ���Ŀ��� �ٸ� ���� ��� �������� ��ȯ�Ͽ� ���� 
HEXTORAW 16���� ���ڿ��� 2������ ���ڿ��� ��ȯ 













