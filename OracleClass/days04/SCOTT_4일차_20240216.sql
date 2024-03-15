-- SCOTT
SELECT SYSDATE, CURRENT_TIMESTAMP
FROM dual;

-- [ dual 설명 ]
SELECT SYSDATE
FROM dual;
--FROM emp;

DESC dual;  -- DUMMY    VARCHAR2(1) 

-- 산술연산자
SELECT 5+3, 5-3, 5*3, 5/3, MOD(5,3)
-- ORA-01476: divisor is equal to zero
SELECT  MOD(5,0) --5/0
FROM dual;


--
SELECT *
FROM emp;
FROM scott.emp;

-- PUBLIC SYNONYM 생성
-- ORA-01031: insufficient privileges
CREATE PUBLIC SYNONYM  arirang
FOR scott.emp;

-- [ 여기서 YY와 RR의 차이점: ]
--  ㄴ RR과 YY는 둘다 년도의 마지막 두자리를 출력해 주지만, 
--  ㄴ 현재 system상의 세기와 나타내고자 하는 년도의 세기를 비교할 했을 때 출력되는 값이 다르다.
--  ㄴ [RR은] 
         -- ㄴ 시스템상(1900년대)의 년도를 기준으로 하여 이전 50년도에서 이후 49년까지는 기준년도와 가까운 1850년도에서 1949년도까지의 값으로 표현하고, 
--          ㄴ 이 범위를 벗어날 경우 다시 2100년을 기준으로 이전 50년도에서 이후 49년까지의 값을 출력한다.
--
--  ㄴ [YY는] 무조건 system상의 년도(2000)를 따른다.

SELECT TO_CHAR( SYSDATE, 'CC' ) -- 21세기(2024년도)
FROM dual;

SELECT 
       '05/01/10'  -- 날짜,[문자열]
       , TO_CHAR(  TO_DATE('05/01/10', 'YY/MM/DD') , 'YYYY' )  a_YY  -- 2005
       , TO_CHAR(  TO_DATE('05/01/10', 'RR/MM/DD') , 'YYYY' )  b_RR  -- 2005
FROM dual;

SELECT 
       '97/01/10'  -- 날짜,[문자열]
       , TO_CHAR(  TO_DATE('97/01/10', 'YY/MM/DD') , 'YYYY' )  a_YY  -- 2097
       , TO_CHAR(  TO_DATE('97/01/10', 'RR/MM/DD') , 'YYYY' )  b_RR  -- 1997
FROM dual;
--
SELECT name, ibsadate
FROM insa;
-- ORDER BY 절 
-- 1차적으로 부서별로 오름차순 정렬시킨 후
-- 2차 정렬  pay 많이 받는 사람 순으로 
SELECT deptno, ename, sal + NVL(comm,0) pay
FROM emp
ORDER BY 1 ASC, 3 DESC;
ORDER BY deptno ASC, pay DESC;

-- 
-- [오라클 연산자 (operator) 정리]
-- 1) 비교 연산자 : WHERE 절에서 숫자,날짜,문자  순서,크기를 비교하는 연산자.
--        =   != ^= <>      >   <    >=   <=
--   ㄴ SQL 연산자   ANY, SOME, ALL
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
-- p 226 질의 4-12
SELECT *
FROM emp

--[문제1] 사원 전체에서 최고 급여를 받는 사원의 정보를 조회(출력) 사원명,사원번호 급여액, 부서번호


SELECT MAX(sal+NVL(comm,0))
FROM emp

SELECT ename,empno,deptno
FROM emp
WHERE (sal+NVL(comm,0)) = (SELECT MAX(sal+NVL(comm,0)) FROM emp)


    --[문제2] 각 부서별 최고 급여를 받는 사원의 정보를 조회(출력)
SELECT *
FROM emp p
WHERE (sal+NVL(comm,0)) = (SELECT MAX(sal+NVL(comm,0)) 
                            FROM emp c
                            WHERE deptno=p.deptno)
    
    
    
    
    
    
    
    
    
    
    
    
    
    


--
오라클 함수(function) 정리
--
오라클 자료형(data type) 정리







