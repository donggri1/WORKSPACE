-- SCOTT

DESC insa;


--SQL 연산자 NOT IN 사용
SELECT *
FROM insa
WHERE city IN( '서울' ,'경기', '인천')
ORDER BY city ASC;

-- 수도권 : 서울 경기 인천
SELECT *
FROM insa
WHERE city = '서울' OR city = '경기' OR city = '인천'
ORDER BY city ASC;

SELECT *
FROM insa
WHERE NOT(city = '서울' OR city = '경기' OR city = '인천')
WHERE city != '서울' AND city != '경기' AND city != '인천'
ORDER BY city ASC;

SELECT *
FROM insa
WHERE city NOT IN( '서울' ,'경기', '인천')
ORDER BY city ASC;

-- SCOTT


--[문제] insa 테이블에서  70년대생만 아래와 같이 출력
--[실행결과]
SELECT name
    ,CONCAT( SUBSTR(ssn,1,8),'******') RRN
    ,SUBSTR(ssn,1,8)||'******' RRN
    --,EXTRACT( YEAR FROM 날짜 )
FROM insa
-- '79' ->79 형변환
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

--[문제] insa 테이블에서 사원명,주민등록번호, 년도,월,일,성별 출력
DESC insa;
SELECT *--771212-1022432
FROM insa;

SELECT name,ssn
    ,SUBSTR(ssn,1,2) YEAR
    ,SUBSTR(ssn,3,2) MONTH
    ,SUBSTR(ssn,5,2) "DATE" -- 예약어라 사용못함
    ,SUBSTR(ssn,8,1) GENDER
FROM insa;

-- 오라클의 예약어 : DATE 
SELECT *
FROM dictionary
WHERE table_name LIKE '%\WORDS%\';
--
SELECT *
FROM V$RESERVED_WOREDS;
-- [문제] emp 테이블에서 입사일자(hiredate)가 81년도인 사원 정보 조회(출력)
-- [3]
--String hiredate = "80/12/17";
--String year =  hiredate.substring(0,2);
--year = "80";
오후 2:01 2024-02-15

SELECT 'abcdefg'
    ,SUBSTR('abcdefg',1,2) --ab 1 첫문자
    ,SUBSTR('abcdefg',0,2) --ab 0 첫문자
    ,SUBSTR('abcdefg',3) --cdefg
    -- -5,-1 음수 뒤에서 부터의 위치값.
    ,SUBSTR('abcdefg',-5,3) --cde 뒤에서부터 5번째 
    ,SUBSTR('abcdefg',-1,1) --g 뒤에서부터 1번째  1생략가능
FROM dual;



SELECT ename, hiredate  -- '80/12/17'
    , SUBSTR( hiredate,1,2)
FROM emp;
WHERE

-- [2] DATE -> 입사년도만 얻어오기..

-- 오늘 날짜의 년/월/일 출력 : DATE(초), TIMESTAMP(나노세컨드,시간대)
-- 자바 : Date d = new Date();  Calendar c = Calendar.getInstance();
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
-- 비교 연산자 : 숫자, 문자, 날짜( '80/12/17' )
DESC emp;
-- HIREDATE          DATE  
SELECT ename, hiredate
FROM emp
WHERE hiredate BETWEEN '81/01/01' AND '81/12/31';
WHERE hiredate >= '81/01/01' AND hiredate <= '81/12/31';

오후 2:51 2024-02-15
-- [NOT] LIKE SQL연산자 설명
-- 문자의 패턴 일치 여부 체크하는 연산자
-- 와일드카드 ( % _ )
-- %    0~ 여러 개   문자의 갯수에 상관없음(문자열 모두찾기*)와 비슷
-- _    한 개의 문자
-- 와일드카드( % _ ) 를 일반 문자처럼 사용하려면 ESCAPE 옵션을 사용하라.. 

--[문제] insa 테이블에서  70년대생만 아래와 같이 출력
SELECT name,ssn
FROM insa
WHERE ssn LIKE '7%';
--[문제] insa 테이블에서  12월생만 아래와 같이 출력
SELECT name,ssn
    ,SUBSTR(SSN,1,4)
    , TO_DATE(SUBSTR(SSN,1,4),'YYMM')
FROM insa
--WHERE SUBSTR(ssn,3,2)='12';
--WHERE EXTRACT(MONTH FROM TO_DATE(SUBSTR(SSN,1,4),'YYMM'))='12';
WHERE SSN LIKE '__12%';
WHERE SSN LIKE '7_12%';

-- [문제] insa 테이블에서 김씨 성을 가진 사원 모두 출력
SELECT name,ssn
FROM insa
WHERE name LIKE '김%';

-- [문제] insa 테이블에서 김씨 성을제외한 사원 모두 출력
SELECT name,ssn
FROM insa
WHERE name LIKE '_김_';
WHERE name LIKE '%김__';
WHERE name LIKE '_김%';
WHERE name LIKE '%김%';
WHERE name NOT LIKE '김%';

문자열의 길이 확인
출신도가 서울, 부산, 대구 이면서 전화번호에 5 또는 7이 포함된 자료 출력하되 
부서명의 마지막 부는 출력되지 않도록함. (이름, 출신도, 부서명, 전화번호)

SELECT name,city
    ,LENGTH(buseo)
    ,SUBSTR(buseo,1,LENGTH(buseo)-1) buseo
    ,tel
FROM insa
--WHERE city IN('서울','부산','대구')AND tel LIKE '%5%' OR '%7%';
WHERE city IN('서울','부산','대구') AND (tel LIKE '%5%' OR tel LIKE '%7%') 

--
--동적쿼리 --
FROM 노트북테이블 
WHERE 제조사컬럼 IN ('LG','삼성','레노버')
    AND
    CPU컬럼 IN('코어I~~세대,'라이젠)

-- [ LIKE 연산자의 ESCAPE 옵션 설명 ]
dept 테이블 구조 확인
DESC dept;
SELECT deptno,dname,loc
FROM dept;
10	ACCOUNTING	NEW YORK
20	RESEARCH	DALLAS
30	SALES	CHICAGO
40	OPERATIONS	BOSTON

-- SQL 5가지 : DQL(SELECT), DDL, DML(INSERT, UPATE, DELETE) + 완료 COMMIT, 취소 ROLLBACK
--              DCLM, TCL

-- DML(INSERT) 새로운 부서를 추가..

DESC dept;
INSERT INTO 테이블명[(컬럼명,컬럼....)] VALUES ( 값,...);
COMMIT;
--ORA-00001: unique constraint (SCOTT.PK_DEPT) violated
--              유일성 제약조건    PK_DEPT(Primary key)
--INSERT INTO dept VALUES( 50, '한글_나라' ,'COREA' );
INSERT INTO dept VALUES( 60, '한글_나라' ,'COREA' );
SELECT *
FROM dept;

-- [문제] dept 테이블에서 부서명 검색을 하는 데
--                      부서명에 % 이 있는 부서정보를 조회
--                      부서명에 _ 이 있는 부서정보를 조회
SELECT *
FROM dept
WHERE dname LIKE '%\%%'ESCAPE '\';
WHERE dname LIKE '%_%';-- 와일드카드로인식

-- DML(INSERT, [UPATE] , DELETE) + 완료 COMMIT, 취소 ROLLBACK
UPDATE [스키마].테이블명
SET 컬럼=값,컬럼=값...
[WHERE 조건절;] -- 모든 레코드 수정.

UPDATE scott.dept
SET LOC='XXX';
ROLLBACK;

UPDATE scott.dept
SET LOC='KOREA'
WHERE deptno = 60;
1 행 이(가) 업데이트되었습니다.
COMMIT;

UPDATE scott.dept
SET LOC='COREA', DNAME ='한글나라'
WHERE deptno = 60;
1 행 이(가) 업데이트되었습니다.
COMMIT;

--[문제] 30번 부서명, 지역명 -> 60번 부서명,지역명으로 UPDATE하자
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

-- DML(INSERT, [UPATE] , [DELETE]) + 완료 COMMIT, 취소 ROLLBACK
DELETE FROM [ 스키마.] 테이블명
[WHERE 조건절;] --없으면 모든레코드 삭제

-- ORA-02292: integrity constraint (SCOTT.FK_DEPTNO) violated - child record found
DELETE FROM dept
WHERE deptno IN(50,60);
WHERE deptno = 50 OR deptno = 60;
COMMIT;
SELECT *
FROM emp;

--[문제] EMP 테이블에서 SAL의 10%를 인상해서 새로운 SAL로 수정하세요
UPDATE emp
SET sal = 1.1*sal;
ROLLBACK;

-- LIKE SQL 연산자 : % _ 패턴기호
-- REGEXP_LIKE 함수 : 정규표현식
-- [문제] insa 테이블에서 성이 김씨,이씨 만 사원을 조회
SELECT *
FROM insa
WHERE REGEXP_LIKE(ssn, '^7[0-9]12')
WHERE REGEXP_LIKE( name, '^[^김이]');
WHERE REGEXP_LIKE( name, '^[경자]$');
WHERE REGEXP_LIKE( name, '^(김|이)');
WHERE REGEXP_LIKE( name, '^[김이]');
WHERE name LIKE '김%' OR name LIKE '이%';
WHERE SUBSTR(name,1,1) IN ('김','이'); 
WHERE SUBSTR(name,1,1)= '김' OR SUBSTR(name,1,1)= '이';

-- [문제] INSA 테이블에서 70년대 남자 사원만 조회...
-- 성별 1,3,5,7,9 남자
-- 나머지 연산자 X , 나머지 함수 MOD()
SELECT name, ssn
FROM insa
WHERE REGEXP_LIKE (ssn,'^7\d{5}-[13579]');
WHERE ssn LIKE '7%' AND SUBSTR(ssn , 8,1) IN(1,3,5,7,9);
WHERE ssn LIKE '7%' AND MOD(SUBSTR(ssn , 8,1),2) =1;










--[1]
-- 비교연산자 : 숫자, 문자, 날짜('80/12/18')
DESC emp;
SELECT ename,hiredate
FROM emp
WHERE hiredate BETWEEN'81/01/01' AND '81/12/31';
WHERE hiredate >='810101' AND hiredate <= '811231';
-- WHERE hiredate > TO_DATE('19810101','YYYYMMDD') AND hiredate < TO_DATE('19811231','YYYYMMDD')

