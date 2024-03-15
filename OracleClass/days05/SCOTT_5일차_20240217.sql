
SELECT deptno
        ,COUNT(*)
        ,SUM( sal+NVL(comm,0)) 
        ,AVG( sal+NVL(comm,0)) 
        ,MAX( sal+NVL(comm,0)) 
        ,MIN( sal+NVL(comm,0)) 
FROM emp
GROUP BY deptno     -- GROUP BY 는 집계함수를 반드시사용
ORDER BY deptno;

SELECT deptno,empno,ename,sal + NVL(comm,0) pay
    ,(
      SELECT COUNT (*) +1
      FROM emp c 
      WHERE c.sal+NVL(comm,0)> p.sal+NVL(comm,0)
      ) pay_rank
FROM emp p 
--ORDER BY pay DESC;

오전 10:28 2024-02-19

--[SET 집합 연산자]
1) 합집합 (UNION, UNION ALL)
SELECT name,city,buseo
FROM insa
WHERE buseo = '개발부' 
--UNION   -- 6명은 중복된다. 제거 1번만 포함
UNION ALL --23
SELECT name,city,buseo
FROM insa
WHERE city= '인천'; -- 9명
2) 차집합 (MINUS)

SELECT name,city,buseo
FROM insa
WHERE buseo = '개발부' 
MINUS
SELECT name,city,buseo
FROM insa
WHERE city= '인천'; -- 9명

3) 교집합 (INTERSECT)
-- 개발부 이면서 인천인 사원들을 파악
--[1]
SELECT name,city,buseo
FROM insa
WHERE buseo = '개발부' AND city = '인천';

SELECT name,city,buseo
FROM insa
WHERE buseo = '개발부' 
INTERSECT
SELECT name,city,buseo
FROM insa
WHERE city= '인천'; -- 9명


-- [SET (집합) 연산자를 사용할 때 주의할 점]
--ORA-01790: expression must have same datatype as corresponding expression 
--ORA-01789: query block has incorrect number of result columns
SELECT name,city,buseo --60행, 18열에서 오류 발생
FROM insa
WHERE buseo = '개발부' 
--UNION   -- 6명은 중복된다. 제거 1번만 포함
UNION ALL --23
SELECT name,city --,jikwi--,basicpay
FROM insa
WHERE city= '인천'; -- 9명
-- insa 테이블의 사원 정보 + emp 테이블의 사원 정보 모두 출력.
SELECT buseo,num,name,ibsadate,basicpay,sudang
FROM insa
UNION ALL
SELECT TO_CHAR(deptno),empno,ename,hiredate,sal,comm
FROM emp;

--MULTISET EXCEPT
--MULTISET INTERSECT
--MULTISET UNION

-- [계층적 질의 연산자]
-- PRIOR, CONNECT_BY_ROOT

--[연결 연산자] || 

--[산술 연산자] + - / *
--           나머지 구하는 연산자 X
--           나머지 구하는 함수 MOD(5,3) *****  5-3*FLOOR(5/3)
--           나머지 구하는 함수 REMAINDER(5,3)  5-3*ROUND(5/3)

SELECT 
--10/0 - ORA-01476: divisor is equal to zero
--'A'/2 --ORA-01722: invalid number
    MOD(10,0)
FROM dual;

IS[NOT] NAN Not A Number
IS[NOT] INFINITE

--오라클 함수(FUNCTION)
--1. 복잡한 쿼리문을 간단하게 해주고 데이터의 값을 조작하는데 사용되는 것
--2. 종류 : (Single row)단일행 함수, (Group)복수행 함수
SELECT LOWER(ename)
FROM emp;

SELECT COUNT(*)
FROM emp;

-- [숫자 함수] --
-- 1) ROUND(number) 숫자값을 특정 위치에서 [반올림]하여 리턴한다.
-- 형식 ROUND(number,n) n = 0 , 음수, 양수 
SELECT 3.141592
      ,ROUND( 3.141592 ) A-- 소숫점 첫 번째 자리에서 반올림.
      ,ROUND( 3.141592,0) B-- n을 생략한 경우와 같다.
      ,ROUND( 3.141592,2) C-- 소숫점 세 번째 자리에서 반올림
      ,ROUND( 1234.5678,2) D-- 소숫점 첫 번째 자리에서 반올림.
      ,ROUND( 1234.5678,-1) E
      ,ROUND( 1234.5678,-2) E
      ,ROUND( 1234.5678,-3) E
FROM dual;

-- [문제] emp 테이블에서 pay, 평균 급여,총 급여합,사원수 출력
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
--        ,평균 급여 계산해서 소수점 2자리 까지 출력하자.
        ,(SELECT SUM(sal+NVL(comm,0))/COUNT(*) FROM emp) avg_pay
        ,ROUND((SELECT AVG(sal+NVL(comm,0)) FROM emp),2) avg_pay
FROM emp;

-- [집계함수] -- NULL 값을 포함한 갯수를 반환
SELECT COUNT (*)
      ,COUNT(empno)
      ,COUNT(deptno)
      ,COUNT(sal)
      ,COUNT(hiredate)
      ,COUNT(comm)
FROM emp;
--평균 커미션 ?
SELECT AVG(comm) -- 550
SELECT SUM(comm)/COUNT(*)
        ,SUM(comm)/COUNT(comm)
FROM emp;

TRUNC(number) 숫자값을 특정 위치에서 절삭하여 리턴한다. 
-- TRUNC (날짜,숫자), FLOOR (숫자) 절삭하는 2가지 함수.
-- 차이점? 두번째 차이점은
--          TRUNC() 는  특정위치에서 절삭이가능
--          FLOOR() 는  소숫점 소수점 첫 번쨰 자리에서만 절삭이가능

SELECT 3.141592
    ,TRUNC(3.141592)   --소수점 첫 번째 자리에서 절삭 가능.
    ,TRUNC(3.141592,0) --소수점 첫 번째 자리에서 절삭 가능
    ,FLOOR(3.141592)
    
    ,TRUNC(3.141592,3)
    ,FLOOR(3.141592*1000)/1000    
    ,TRUNC(3.141592,-1)
    
FROM dual

CEIL 숫자값을 소숫점 첫째자리에서 올림하여 정수값을 리턴한다. 

SELECT CEIL(3.14),CEIL(3.64)
FROM dual;

-- 3.141592 를 소수점 세번째 자리에서 올림하자
SELECT CEIL(3.141592*100 )/100 -- 3.14
FROM dual;
-- 총페이지수를 계산할 때 CEIL() 올림(절상)함수를 사용한다.
-- 총 게시글(사원) 수 :
-- 한 페이지에 출력할 게시글 (사원) 수 : 5
SELECT COUNT(*) FROM emp;
SELECT (SELECT COUNT(*) FROM emp)/5 총페이지수
FROM dual
SELECT CEIL((SELECT COUNT(*) FROM emp)/5) 총페이지수
FROM dual

SELECT *
FROM emp
ORDER BY sal+NVL(comm,0) DESC;

FLOOR 숫자값을 소숫점 첫째자리에서 절삭하여 정수값을 리턴한다. 
MOD 나머지값을 리턴한다. 
--ABS 숫자값의 절대값을 리턴한다. 
SELECT ABS(100),ABS(-100) -- 절대값 구하는 함수
FROM dual

--SIGN 숫자값의 부호에 따라 1, 0, -1의 값으로 리턴한다. 

SELECT SIGN(100),SIGN(0),SIGN(-100)
FROM dual;
--[문제] emp 테이블의 평균 급여를 구해서
-- 각 사원의 급여 pay가 평균 급여보다 많으면 "평균급여보다 많다" 라고 출력하고
-- 각 사원의 급여가 평균보다 적으면 평균급여보다 적다 라고 출력

SELECT AVG(sal+NVL(comm,0))
FROM emp;

--[3]
-- [3]
SELECT ename, pay, avg_pay
     , NVL2( NULLIF( SIGN( pay - avg_pay ), 1 ), '적다' , '많다') 
FROM (
        SELECT ename, sal+NVL(comm,0) pay 
            , (SELECT AVG( sal + NVL(comm,0 )) avg_pay FROM emp) avg_pay
        FROM emp
      );

--
---**** TBL_TEL 테이블 만들기
---
        
--[2]
SELECT ename,sal+NVL(comm,0)pay
    ,(SELECT AVG(sal+NVL(comm,0)) avg_pay FROM emp)avg_pay
    ,SIGN(sal+NVL(comm,0)-(SELECT AVG(sal+NVL(comm,0)) avg_pay FROM emp)) s
    ,REPLACE(REPLACE(SIGN(sal+NVL(comm,0)-(SELECT AVG(sal+NVL(comm,0)) avg_pay FROM emp)),-1,'적다'),1,'많다')
FROM emp;
-- [1]
SELECT s.*,  '많다'
FROM emp s
WHERE sal + NVL(comm,0 ) > (SELECT AVG( sal + NVL(comm,0 )) avg_pay
                            FROM emp)
UNION                            
SELECT s.*,  '적다'
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

-- POWER(n1,n2) n1^n2한 지수곱값을 리턴한다. 
SELECT POWER(2,3),POWER(2,-3)
    ,SQRT(2)
FROM dual;

--SQRT(n) n의 제곱근 값을 리턴한다. 
--SIN(n) n의 sine 값을 리턴한다. 
--COS(n) n의 cosine 값을 리턴한다. 
--TAN(n) n의 tangent 값을 리턴한다. 
--SINH(n) n의 hyperbolic sine 값을 리턴한다. 
--COS(n) n의 hyperbolic cosine 값을 리턴한다. 
--TAN(n) n의 hyperbolic tangent 값을 리턴한다. 
--LOG(a,b) 밑이 a인 b의 지수 값을 리턴한다. 즉, 뒤의 값이 앞의 값의 몇 배수인지를 알림 
--LN(n) n의 자연로그 값을 리턴한다. 

-- [ 문자함수 ] 
--UPPER 영어 소문자를 대문자로 바꾸어 리턴한다. 
--LOWER 영어 대문자를 소문자로 바꾸어 리턴한다. 
--INITCAP 문자열중 각 단어의 첫글자만 대문자로 바꾸어 리턴한다. 
--LENGTH 문자열의 길이를 숫자값으로 리턴한다.
--LENGTHB, LENGTHC, LENGTH2, LENGTH4가 있음 
--CONCAT 첫번째 문자열과 두번째 문자열을 연결하여 리턴한다. 연결 연산자(??) 참조 
--SUBSTR 문자값 중 특정 위치부터 특정 길이만큼의 문자값만을 리턴한다.
--SUBSTRB, SUBSTRC, SUBSTR2, SUBSTR4 
--INSTR 문자값 중 지정된 문자값의 위치를 숫자로 리턴한다. 
SELECT INSTR('Corea','e') --4
FROM dual;

SELECT INSTR('corporate floor','or')  --2
      ,INSTR('corporate floor','or',3,2) -- 14
      ,INSTR('corporate floor','or',-3,2) -- 2 뒤에서 3번째에서 2번째 오는 OR 문자열
FROM dual;

SELECT '02-123-5678' hp
        ,INSTR('02-1234-5678','-')"첫번째-위치"
        ,INSTR('02-1234-5678','-',-1)"두번째-위치"
        ,SUBSTR('02-1234-5678',1,INSTR('02-1234-5678','-')-1)a--010
        ,SUBSTR('02-1234-5678',INSTR('02-1234-5678','-')+1,)b --1234
            ,INSTR('02-1234-5678','-',-1)-1-(INSTR('02-1234-5678','-')_1))
        ,SUBSTR('02-1234-5678',INSTR('02-1234-5678','-',-1)+1,4)c --5678
FROM dual;

DESC tbl_tel;
SELECT*
FROM tbl_tel;
--
INSERT INTO tbl_tel(tel,name) VALUES('063)469-4567','큰삼촌');
INSERT INTO tbl_tel(tel,name) VALUES('063)1456-2367','둘째삼촌');
COMMIT;
-- 지역번호 / 앞자리 전화번호 / 뒷자리 전화번호

SELECT 
    INSTR(tel,')') 첫번째 
    ,INSTR(tel,'-') 두번째
    ,SUBSTR(tel,0,INSTR(tel,')')-1)
    ,SUBSTR(tel,INSTR(tel,')')+1,(INSTR(tel,'-')-INSTR(tel,')')-1))
    ,SUBSTR(tel,INSTR(tel,'-')+1)
FROM tbl_tel;



--RPAD 지정된 길이에서 문자값을 채우고 남은 공간을 우(좌)측부터 특정값으로 채워 리턴한다.LPAD 
    -- PAD == 덧 대는 것, 메워 넣는 것 , 패드
    -- 형식) RPAD(expr1,n[,expr2])
    SELECT ename, pay
        ,RPAD(pay,10,'*')
        ,LPAD(pay,10)
        ,LPAD(pay,10,'*')
    FROM(
            SELECT ename,sal+ NVL ( comm,0)pay
            FROM emp
        )T;



--RTRIM 문자값중에서 우(좌)측으로부터 특정문자와 일치하는 문자값을 제거하여 리턴한다.LTRIM 
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


--ASCII(char) 지정한 숫자나 문자를 ASCII 코드값으로 바꾸어 리턴한다.(문자일 경우, 단일인용부호를 사용한다) 

SELECT ename
      ,SUBSTR(ename,1,1)
      ,ASCII(SUBSTR(ename,1,1))
      ,CHR(ASCII(SUBSTR(ename,1,1)))
FROM emp
--
SELECT ASCII('A'),ASCII('a'),ASCII('0')
FROM dual


--CHR(n) ASCII 코드값인 n값을 해당하는 문자로 바꾸어 리턴한다.(CHR(75)='F'임) 
--GREATEST(a1,a2,a3) 나열한 숫자나 문자중에서 가장 큰 값을 리턴한다. 
SELECT GREATEST(3,5,2,4,1)
      ,GREATEST('R','A','Z','X')
      ,LEAST(3,5,2,4,1)
      ,LEAST('R','A','Z','X')
FROM dual;

--LEAST(a1,a2,a3) 나열한 숫자나 문자중에서 가장 작은 값을 리턴한다. 
--REPLACE(a1,a2,a3) a1: 전제문자열
a2: 전체 문자열 a1중에서 바꾸기를 원하는 문자열
a3: 바꾸고자 하는 새로운 문자열 
--VSIZE(char) 지정된 문자열의 크기를 숫자값으로 리턴한다. 

--VSIZE()
SELECT ename
      ,VSIZE(ename)
      ,VSIZE('홍길동')
      ,VSIZE('a')
      ,VSIZE('')
FROM emp;

--[날짜 함수]
--SYSDATE 현재의 날짜와 시간을 리턴한다. 날짜 
SELECT SYSDATE
FROM dual;
ROUND(date) 정오를 기준으로 날짜를 반올림하여 리턴한다. 날짜 

SELECT SYSDATE
    ,ROUND(SYSDATE) -- 정오기준 날짜 반올림 
    ,ROUND(SYSDATE,'DD') b -- 반올림 / 24/02/20  정오 기준 날짜 반올림
    ,ROUND(SYSDATE,'MONTH') -- 월기준 반올림
    ,ROUND(SYSDATE,'YEAR') -- 년기준 반올림
FROM dual;
TRUNC(date) 날짜에서 시간부분을 절삭하여 00:00으로 바꾸어주는 함수 날짜 
SELECT SYSDATE 
    ,TO_CHAR(SYSDATE,'YYYY.MM.DD.HH24.MI.SS')
    ,TRUNC(SYSDATE) -- 시간 분 초 절삭
    ,TRUNC(SYSDATE,'DD')
    ,TO_CHAR(TRUNC(SYSDATE),'YYYY.MM.DD.HH24.MI.SS')
    ,TRUNC(SYSDATE,'MONTH')
    ,TRUNC(SYSDATE,'YEAR')
FROM dual;

--날짜 + 숫자 날짜 날짜에 일수를 더하여 날짜 계산 
SELECT SYSDATE +100
FROM dual;
--날짜 - 숫자 날짜 날짜에 일수를 감하여 날짜 계산 
SELECT SYSDATE -100
FROM dual;
--날짜 + 숫자/24 날짜 날짜에 시간을 더하여 날짜 계산 
SELECT SYSDATE 
    ,TO_CHAR(SYSDATE,'YYYY/MM/DD HH24:MI:SS')
    , SYSDATE + 2/24
    , TO_CHAR(SYSDATE+2/24, 'YYYY/MM/DD HH24:MI:SS')
FROM dual;


--날짜 - 날짜 일수 날짜에 날짜를 감하여 일수 계산 
SELECT SYSDATE -100/24
FROM dual;

--[문제] 입사한 날짜부터 오늘 날짜까지 근무한 일수 몇일?

SELECT ename
    ,hiredate
    ,SYSDATE
    ,CEIL(SYSDATE- hiredate)
    ,TRUNC(SYSDATE+1)-TRUNC(hiredate)
FROM emp;

--[문제] 24년 2월 마지막날짜 몇 일 까지?
[2] LAST_DAY() 함수
SELECT SYSDATE
    -- 매개변수 날짜와 마지막 날짜 반환하는 함수
    ,LAST_DAY(SYSDATE) --24/02/29
    ,TO_CHAR(LAST_DAY(SYSDATE) , 'DD')
FROM dual;
[1]
SELECT SYSDATE a --24/02/19
--        ,TRUNC(SYSDATE,'DD')  시간 분초절삭
          ,TRUNC(SYSDATE,'MONTH') b--        24/02/01
          -- 한달 더하기
--          , ADD_MONTHS(TRUNC(SYSDATE,'MONTH'),-1)
--          , ADD_MONTHS(TRUNC(SYSDATE,'MONTH'),1)
          , ADD_MONTHS(TRUNC(SYSDATE,'MONTH'),1)-1
         -- ,TO_CHAR( ADD_MONTHS(TRUNC(SYSDATE,'MONTH'),1),-1)'DD')
FROM dual;

--[문제] 개강일로부터 오늘날짜까지 일수 ?
-- 2024.12.29 개강
-- 2024.06.14 수료
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
--[문제] 오늘날짜부터 수료일까지 남은 일수 ?
-- 2024.06.14

-- NEXT_DAY() 함수
SELECT SYSDATE
    ,TO_CHAR( SYSDATE,'YYYY/MM/DD(DY)') a
    ,TO_CHAR( SYSDATE,'YYYY/MM/DD(DAY)') a
    -- 가장 가까운 금요일날 약속하자
    ,NEXT_DAY(SYSDATE,'금')
    ,NEXT_DAY(SYSDATE,'월')
FROM dual;
-- [문제] 4월 첫 번째 화요일 만나자
SELECT SYSDATE
    ,TO_DATE('2024/04.01')-1
    ,NEXT_DAY(TO_DATE('2024/04.01')-1,'화')
    ,NEXT_DAY(TO_DATE('2024/04.01')-1,'월')
FROM dual;
-- MONTHS_BETWEEN() 두 날짜사이의 개월 수 반환하는 함수
SELECT ename,hiredate
        , SYSDATE
        , CEIL(ABS(hiredate-SYSDATE) )근무일수
        , MONTHS_BETWEEN(SYSDATE,hiredate) 근무개월수
        , ROUND( MONTHS_BETWEEN(SYSDATE,hiredate)/12,2) 근무년수
FROM emp;

--ADD_MONTHS 특정 수의 달을 더한 날짜를 리턴하는 함수 날짜 
--LAST_DAY 특정 날짜가 속한 달의 가장 마지막 날짜를 리턴하는 함수 날짜 
--NEXT_DAY 명시된 요일이 돌아오는 가장 최근의 날짜를 리턴하는 함수 날짜 

SELECT SYSDATE
        ,CURRENT_DATE
        ,CURRENT_DATE
FROM dual;





SELECT *
FROM tabs;


--[변환 함수]
--1)TO_NUMBER 문자 타입을 숫자 타입으로 변환 
SELECT '12'
      , TO_NUMBER('12 ')
      , 100-'12'
      ,'100'-'12'
FROM dual;

--2)TO_CHAR(number) 숫자, 날짜 타입을 문자 타입으로 변환, TO_CHAR(character),TO_CHAR(datetime) 
--[ 문제] insa테이블에서 PAY 를 세자리마다 콤마를 출력하고 앞에 통화 기호를 붙이자
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

--정리
--변환 함수
--1) TO_NUMBER(0 X
--2) TO_CHAR(NUMBER) O , TO_CHAR(DATETIME) X

TO_DATE 숫자, 문자 타입을 날짜 타입으로 변환 
CONVERT 문자열을 한 국가의 언어 형식에서 다른 국가 언어 형식으로 변환하여 실행 
HEXTORAW 16진수 문자열을 2진수로 문자열을 변환 













