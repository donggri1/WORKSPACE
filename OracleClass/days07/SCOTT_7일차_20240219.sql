-- SCOTT
-- [1] insa 테이블에서 각 부서별 사원수 조회
-- ㄱ. SET 집합 연산자 UNION, UNION ALL
-- ㄴ. 상관 서브쿼리
SELECT DISTINCT buseo
       , (  SELECT COUNT(*) CNT
            FROM insa
            WHERE buseo = p.buseo ) CNT
FROM insa p;
-- ㄷ. WITH 절  
-- ㄹ. GROUP BY 절
SELECT buseo, COUNT(*) CNT
FROM insa
GROUP BY buseo;

-- [2] emp 테이블에서 급여의 등수(RANK) + ( TOP 3 )
--  ㄷ. TOP-N 분석 방식
SELECT ROWNUM pay_rank
     , e.*
FROM (
        SELECT *
        FROM emp
        ORDER BY sal+NVL(comm,0) DESC
    ) e
WHERE ROWNUM <= 3    ;
--  ㄴ. 자바 로직 사용
SELECT 
     ( SELECT COUNT(*)+1 FROM emp c WHERE  sal+NVL(comm,0) > (p.sal + NVL(p.comm,0)) ) pay_rank
     , p.*
FROM emp p
ORDER BY pay_rank ASC;
--  ㄱ. RANK() OVER() 순위 함수
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

-- [3] insa 테이블에서 남자사원수, 여자사원수 조회...
-- ㄷ. DECODE() 사용
-- ORA-00937: not a single-group group function
SELECT COUNT(*) "전체사원수"
   , COUNT( DECODE( MOD( SUBSTR(ssn, 8, 1), 2 ), 1, '남자' ) ) "남자사원수"
   , COUNT( DECODE( MOD( SUBSTR(ssn, 8, 1), 2 ), 0, '여자' ) ) "여자사원수"
FROM insa;
-- 풀이)
SELECT 
       DECODE( MOD( SUBSTR(ssn, 8, 1), 2 ), 1 , 'O')
FROM insa;
--
SELECT 
     COUNT(*)
FROM insa
WHERE MOD( SUBSTR(ssn, 8, 1), 2 ) = 1;
-- ㄱ. SET 집합 연산자
-- ㄴ. GROUP BY 절 사용.
SELECT 
       DECODE(  MOD(SUBSTR( ssn, 8, 1),2), 1, '남자사원수', '여자사원수') GENDER
      , COUNT(*) CNT
FROM insa
GROUP BY  MOD(SUBSTR( ssn, 8, 1),2)
UNION ALL
SELECT '전체사원수', COUNT(*)
FROM insa;
-- ORA-01789: query block has incorrect number of result columns
[실행결과]
남자사원수	31
여자사원수	29
전체사원수   60
-- [4] emp 각 부서별 사원수 조회
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
-- [4-2] 위의 결과물에 부서번호가 아니라 부서명이 출력.
--dept : dname
--emp  :
-- 조인(JOIN)
예)  부서번호, 부서명,사원명,입사일자   출력
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

-- [5] insa 테이블에서 "생일 후", "생일 전", "오늘 생일"
--   ( DECODE() 함수 사용 )
SELECT num, name, ssn
  -- , TO_CHAR( TRUNC(SYSDATE), 'TS')
  , SIGN( TO_DATE( SUBSTR( ssn, 3,4) , 'MMDD') - TRUNC(SYSDATE) ) s
  , DECODE(SIGN( TO_DATE( SUBSTR( ssn, 3,4) , 'MMDD') - TRUNC(SYSDATE) ), 1, '생일 전', 0, '오늘 생일', '생일 후') r
  , CASE SIGN( TO_DATE( SUBSTR( ssn, 3,4) , 'MMDD') - TRUNC(SYSDATE) )
       WHEN 1 THEN '생일 전'
       WHEN 0 THEN '오늘 생일'
       ELSE        '생일 후'
    END  별칭1
  , CASE 
       WHEN TO_DATE( SUBSTR( ssn, 3,4) , 'MMDD') - TRUNC(SYSDATE) > 0 THEN '생일 전'
       WHEN TO_DATE( SUBSTR( ssn, 3,4) , 'MMDD') - TRUNC(SYSDATE) = 0 THEN '오늘 생일'
       ELSE '생일 후'
    END 별칭2
FROM insa;

-- [5-2] emp 테이블에서  10번 부서원 sal 10% 인상, 20번 부서원 sal 15% 인상, 그 외 부서는 5% 인상.
SELECT deptno, ename, sal
       , sal * DECODE( deptno, 10, 1.1 , 20, 1.15 , 1.05 ) sal인상금액
       , sal * CASE deptno
                    WHEN 10 THEN 1.1
                    WHEN 20 THEN 1.15
                    ELSE 1.05        
               END  sal인상금액
       , sal * CASE 
                    WHEN deptno=10 THEN 1.1
                    WHEN deptno=20 THEN 1.15
                    ELSE 1.05        
               END  sal인상금액 
FROM emp;

--
SELECT *
FROM insa;
--  ㄱ. 1002 번 사원의 주민등록번호  800221-1544236   UPDATE 쿼리 실행 + COMMIT
SELECT SYSDATE
    , TO_CHAR( SYSDATE, 'DD' )  -- 21
FROM dual;

UPDATE  insa
SET ssn =  SUBSTR( ssn, 1, 2) || TO_CHAR( SYSDATE, 'MMDD' ) || SUBSTR( ssn, 7) 
WHERE num IN ( 1001,  1002 );
-- 1 행 이(가) 업데이트되었습니다.
COMMIT;
--
SELECT *
FROM insa;
-- 11:02 수업 시작~~~ 
-- [문제] insa 테이블에서 총사원수, 생일전사원수, 오늘생일사원수, 생일후사원수 출력(조회)
--      (    DECODE() 함수 사용.   )
-- ㄱ. 
SELECT COUNT(*) "총사원수"
   , COUNT( DECODE(s, 1, 'O') ) "생일전사원수"
   , COUNT( DECODE(s, 0, 'O') ) "오늘생일사원수"
   , COUNT( DECODE(s, -1, 'O') ) "생일후사원수"
FROM (
        SELECT num, name, ssn
          ,  SIGN( TO_DATE( SUBSTR( ssn, 3,4 ), 'MMDD' ) - TRUNC( SYSDATE ) ) s
        FROM insa
     ) t ;
-- ㄴ. 
SELECT CASE s
           WHEN 1 THEN '생일 전'
           WHEN 0 THEN '오늘 생일'
           ELSE '생일 후'
       END || '사원수'
       , COUNT(*)
FROM (
        SELECT num, name, ssn
          ,  SIGN( TO_DATE( SUBSTR( ssn, 3,4 ), 'MMDD' ) - TRUNC( SYSDATE ) ) s
        FROM insa
     ) t 
GROUP BY   s   ;

-- [문제] emp 테이블에서 평균 pay 보다 같거나 많은 사원들의 [급여합]을 출력
-- 12:02 수업시작~
-- ㄷ. DECODE, CASE 
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
-- ㄴ.
SELECT SUM( sal + NVL(comm,0))  pay
FROM emp
WHERE sal + NVL(comm,0) >= ( SELECT ROUND(AVG(sal+NVL(comm,0)),2) FROM emp );
-- ㄱ. 
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

-- [문제] emp, dept 테이블을 사용해서
--       사원이 존재하지 않는 부서의 부서번호,부서명을 출력하자.
-- ㄷ.  상관 서브 쿼리
SELECT p.deptno, p.dname
FROM dept p 
--WHERE (SELECT COUNT(*) FROM emp WHERE deptno=p.deptno) =0;
 WHERE NOT EXISTS ( SELECT empno FROM emp WHERE deptno = p.deptno );

-- ㄴ. 
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
            
-- ㄱ. 풀이(  각 부서별 사원수 조회 )
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

-- ㄹ. 풀이 HAVING 절
WITH
SELECT
FROM
WHERE
GROUP BY
   HAVING 절 X
ORDER BY ;
-- 
SELECT d.deptno, d.dname, COUNT(empno) cnt
            FROM dept d LEFT OUTER JOIN emp e ON d.deptno = e.deptno
            -- WHERE cnt = 0  -- ORA-00904: "CNT": invalid identifier
            GROUP BY d.deptno, d.dname
            HAVING COUNT(empno)=0
            ORDER BY d.deptno
-- HAVING 절 : GROUP BY 절의 조건절
-- [문제] insa 테이블에서 각 부서별 여자사원수를 파악해서 5명 이상인 부서 정보 출력.
--    영업부   7
--    총무부   5
SELECT buseo, COUNT(*) cnt
FROM insa
WHERE MOD( SUBSTR(ssn,8,1), 2 ) = 0
GROUP BY buseo
HAVING COUNT(*) >= 5
ORDER BY cnt DESC;

-- [문제] emp 테이블에서 부서별, job별 사원의 총급여합 조회
SELECT deptno, job
    , COUNT(*) cnt
    , SUM(  sal+NVL(comm,0) ) deptno_pay_sum
    , AVG(  sal+NVL(comm,0) ) deptno_pay_avg
    , MAX(  sal+NVL(comm,0) ) deptno_pay_max
    , MIN(  sal+NVL(comm,0) ) deptno_pay_min
FROM emp
GROUP BY deptno, job
ORDER BY deptno, job;

-- ( 암기 )  Oracle 10g   PARTITION OUTER JOIN 구문
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

-- [ GROUPING SETS 절]
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

-- [LISTAGG 함수]
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

-- ( 암기 )
SELECT d.deptno   
   , NVL( LISTAGG(ename, ',') WITHIN GROUP( ORDER BY ename ), '사원이 존재하지 않습니다.' ) 사원목록  -- ename의  LIST 목록 집합
FROM dept d LEFT JOIN emp e ON d.deptno = e.deptno
GROUP BY d.deptno;
-- 
SELECT *
FROM salgrade; -- 급여 등급 테이블
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

-- 3:02 수업 시작
-- [ salgrade 테이블 + emp 테이블 조인]
--salgrade : grade
--emp : ename, sal 
SELECT ename, sal, grade, losal, hisal
FROM emp , salgrade 
WHERE sal BETWEEN losal AND hisal;
-- JOIN ON 구문             NON 이콜 조인
SELECT ename, sal, losal  || '~' || hisal, grade
FROM emp JOIN salgrade  ON sal BETWEEN losal AND hisal;

-- [정규 표현식 오라클 함수]
SELECT *
FROM insa
WHERE REGEXP_LIKE( ssn, '^7\d*');
WHERE ssn LIKE '7%';  -- 와일드카드( % _ )
-- REGEXP_INSTR()
-- REGEXP_SUBSTR()
-- REGEXP_REPLACE()

-- [ 순위 함수 ]
-- 1) RANK() 
-- 2) DENSE_RANK()
-- 3) PERCENT_RANK()
-- 4) ROW_NUMBER()
-- 5) FIRST()/ LAST()

-- [문제] emp 테이블에서  sal  순위 매겨보자. 
SELECT empno, ename, sal
     , RANK() OVER(ORDER BY sal DESC) r_rank
     , DENSE_RANK() OVER(ORDER BY sal DESC) dr_rank
     , ROW_NUMBER() OVER(ORDER BY sal DESC) rn_rank
FROM emp;
--7654	MARTIN	1250	9	9	9
--7521	WARD	1250	9	9	10
--7900	JAMES	950	    11	10	11

--DENSE 빽빽한, 밀집한~
SELECT deptno, empno, ename, sal
     , RANK() OVER( PARTITION BY deptno ORDER BY sal DESC) r_rank
     , DENSE_RANK() OVER( PARTITION BY deptno ORDER BY sal DESC) dr_rank
     , ROW_NUMBER() OVER( PARTITION BY deptno ORDER BY sal DESC) rn_rank
FROM emp;

-- [문제] emp 테이블에서 
--      각 사원을 급여를 전체 순위, 부서내 순위를 출력.
SELECT deptno, ename, sal + NVL(comm, 0) pay
   , RANK() OVER(ORDER BY sal + NVL(comm, 0) DESC)  전체순위
   , RANK() OVER( PARTITION BY deptno ORDER BY sal + NVL(comm, 0) DESC)  부서내순위
FROM emp
ORDER BY deptno ASC;

-- [ROLLUP/CUBE 연산자]
-- INSA 테이블에서
--   남자사원수:31명
--   여자사원수:29명
--   전체사원수:60명
-- 4:06 수업 시작~~ 
-- ㄱ.
SELECT '남자사원수', COUNT(*)
FROM insa
WHERE MOD( SUBSTR(ssn, -7,1), 2  ) = 1 
UNION ALL
SELECT '여자사원수', COUNT(*)
FROM insa
WHERE MOD( SUBSTR(ssn, -7,1), 2  ) = 0 
UNION
SELECT '전체사원수',  COUNT(*)
FROM insa;
-- ㄴ.
SELECT 
 DECODE(MOD( SUBSTR(ssn, -7,1), 2  ), 1, '남자','여자') || '사원수' gender
 , COUNT(*)
FROM insa
GROUP BY MOD( SUBSTR(ssn, -7,1), 2  )
UNION
SELECT '전체사원수',  COUNT(*)
FROM insa;
-- ㄷ.
SELECT 
   COUNT(*)
  ,COUNT(DECODE())
  ,COUNT(DECODE())
FROM insa;

-- 
SELECT 
 DECODE(MOD( SUBSTR(ssn, -7,1), 2  ), 1, '남자', 0,'여자', '전체') || '사원수' gender
 , COUNT(*)
FROM insa
GROUP BY CUBE( MOD( SUBSTR(ssn, -7,1), 2  ) ); 
GROUP BY ROLLUP( MOD( SUBSTR(ssn, -7,1), 2  ) ); --  분석함수

-- 예2) 
SELECT buseo, jikwi
  , COUNT(*) cnt
--  , SUM( basicpay ) 직급별급여합
FROM insa
GROUP BY   buseo, ROLLUP(jikwi )
-- GROUP BY  ROLLUP( buseo, jikwi )
-- GROUP BY  CUBE( buseo, jikwi )
ORDER BY buseo;

-- [문제] emp 테이블에서 가장 빨리 입사한 사원과 가장 늦게(최근)에 입사한 사원의 정보 조회
--       입사한 차의 일수 ? 
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

-- 내일 수업 !~~~~
-- [문제] insa 테이블에서 각 사원들의 만나이를 계산해서 출력...
--  1) 만나이 = 올해년도 - 생일년도      (생일지났지 여부 X   -1 )
--      ㄱ. 생일 지났는 여부
--      ㄴ. 981223-1XXXX
--                 12    1900   34  2000  89 1800






  




