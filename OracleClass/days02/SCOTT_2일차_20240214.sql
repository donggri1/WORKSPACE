-- SCOTT
SELECT *
FROM tabs;
-- SCHEMA ?
-- SESSION ?
-- TABLESPACE ?

--SQL 중 DQL : SELECT -- 
--하나 이상의 테이블, 뷰로 부터 데이터를 가져올 때 사용하는 문

--【형식】
[subquery_factoring_clause] subquery [for_update_clause];

【subquery 형식】
   {query_block ?
    subquery {UNION [ALL] ? INTERSECT ? MINUS }... ? (subquery)} 
   [order_by_clause] 

【query_block 형식】
   SELECT [hint] [DISTINCT ? UNIQUE ? ALL] select_list
   FROM {table_reference ? join_clause ? (join_clause)},...
     [where_clause] 
     [hierarchical_query_clause] 
     [group_by_clause]
     [HAVING condition]
     [model_clause]

【subquery factoring_clause형식】
   WITH {query AS (subquery),...}

-- SELECT문은 몇개의 절로 나뉜다. (암기) + 반드시 처리 순서

(1) WITH 절
    (6) SELECT 절
(2) FROM 절
(3) WHERE 절
(4) GROUP BY 절
(5) HAVING 절
    (7) ORDER BY 절
--
FROM 조회할대상 == 테이블, 뷰(View)
--
SELECT*
FROM tabs; -- 뷰
FROM emp;  -- 테이블

--emp 테이블 어떤 컬럼으로 이루어져 있는 지 확인 ?
--          (테이블 구조 확인)
DESCRIBE scott.emp;
DESCRIBE emp;
DESC emp;
이름       널?       유형           
-------- -------- ------------ 
EMPNO  사원번호  NOT NULL 널허용X == 필수입력사항 NUMBER(4) 4자리 정수
ENAME  사원명           VARCHAR2(10) 문자열(10바이트)
JOB    잡           VARCHAR2(9)  문자열(9바이트)
MGR    직속상사의 사원번호           NUMBER(4)  4자리 정수  
HIREDATE 입사일자         DATE         날짜 자료형
SAL    기본급           NUMBER(7,2)  소수점 두자리까지의 실수
COMM   커미션           NUMBER(7,2)  소수점 두자리까지의 실수
DEPTNO 부서번호            NUMBER(2)    2자리 정수

--SCOTT이 소유하는 테이블 확인
SELECT *
FROM tabs;

-- SELECT 문 키워드 : DISTINCT, ALL, AS 사용 가능.
SELECT *       -- * 모든컬럼을 조회
SELECT emp.*
FROM emp;
-- emp 테이블의 사원번호,사원명,입사일자 만 조회
SELECT empno,ename,hiredate 
FROM emp;
--emp 테이블의 job컬럼만 조회
SELECT job --중복이 되더라도 모두출력 all이 생략돼있음 
FROM emp;
-- DISTINCT 출력할 컬럼이 중복이 될 때 한번만 출력 (암기)
SELECT DISTINCT job
FROM emp;
-- emp 테이블의 사원번호,사원명,입사일자 만 조회
--SELECT empno,ename,hiredate 
SELECT DISTINCT empno,ename,hiredate 
FROM emp;

---- 복사 오후 2:02 2024-02-14
CREATE TABLE insa(
        num NUMBER(5) NOT NULL CONSTRAINT insa_pk PRIMARY KEY
       ,name VARCHAR2(20) NOT NULL
       ,ssn  VARCHAR2(14) NOT NULL
       ,ibsaDate DATE     NOT NULL
       ,city  VARCHAR2(10)
       ,tel   VARCHAR2(15)
       ,buseo VARCHAR2(15) NOT NULL
       ,jikwi VARCHAR2(15) NOT NULL
       ,basicPay NUMBER(10) NOT NULL
       ,sudang NUMBER(10) NOT NULL
);

-- DML : INSERT, UPDATE, DELETE              TRUNCATE              + COMMIT, ROLLBACK
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1001, '홍길동', '771212-1022432', '1998-10-11', '서울', '011-2356-4528', '기획부', 
   '부장', 2610000, 200000);
   
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1002, '이순신', '801007-1544236', '2000-11-29', '경기', '010-4758-6532', '총무부', 
   '사원', 1320000, 200000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1003, '이순애', '770922-2312547', '1999-02-25', '인천', '010-4231-1236', '개발부', 
   '부장', 2550000, 160000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1004, '김정훈', '790304-1788896', '2000-10-01', '전북', '019-5236-4221', '영업부', 
   '대리', 1954200, 170000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1005, '한석봉', '811112-1566789', '2004-08-13', '서울', '018-5211-3542', '총무부', 
   '사원', 1420000, 160000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1006, '이기자', '780505-2978541', '2002-02-11', '인천', '010-3214-5357', '개발부', 
   '과장', 2265000, 150000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1007, '장인철', '780506-1625148', '1998-03-16', '제주', '011-2345-2525', '개발부', 
   '대리', 1250000, 150000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1008, '김영년', '821011-2362514', '2002-04-30', '서울', '016-2222-4444', '홍보부',    
'사원', 950000 , 145000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1009, '나윤균', '810810-1552147', '2003-10-10', '경기', '019-1111-2222', '인사부', 
   '사원', 840000 , 220400);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1010, '김종서', '751010-1122233', '1997-08-08', '부산', '011-3214-5555', '영업부', 
   '부장', 2540000, 130000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1011, '유관순', '801010-2987897', '2000-07-07', '서울', '010-8888-4422', '영업부', 
   '사원', 1020000, 140000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1012, '정한국', '760909-1333333', '1999-10-16', '강원', '018-2222-4242', '홍보부', 
   '사원', 880000 , 114000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1013, '조미숙', '790102-2777777', '1998-06-07', '경기', '019-6666-4444', '홍보부', 
   '대리', 1601000, 103000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1014, '황진이', '810707-2574812', '2002-02-15', '인천', '010-3214-5467', '개발부', 
   '사원', 1100000, 130000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1015, '이현숙', '800606-2954687', '1999-07-26', '경기', '016-2548-3365', '총무부', 
   '사원', 1050000, 104000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1016, '이상헌', '781010-1666678', '2001-11-29', '경기', '010-4526-1234', '개발부', 
   '과장', 2350000, 150000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1017, '엄용수', '820507-1452365', '2000-08-28', '인천', '010-3254-2542', '개발부', 
   '사원', 950000 , 210000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1018, '이성길', '801028-1849534', '2004-08-08', '전북', '018-1333-3333', '개발부', 
   '사원', 880000 , 123000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1019, '박문수', '780710-1985632', '1999-12-10', '서울', '017-4747-4848', '인사부', 
   '과장', 2300000, 165000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1020, '유영희', '800304-2741258', '2003-10-10', '전남', '011-9595-8585', '자재부', 
   '사원', 880000 , 140000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1021, '홍길남', '801010-1111111', '2001-09-07', '경기', '011-9999-7575', '개발부', 
   '사원', 875000 , 120000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1022, '이영숙', '800501-2312456', '2003-02-25', '전남', '017-5214-5282', '기획부', 
   '대리', 1960000, 180000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1023, '김인수', '731211-1214576', '1995-02-23', '서울', NULL           , '영업부', 
   '부장', 2500000, 170000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1024, '김말자', '830225-2633334', '1999-08-28', '서울', '011-5248-7789', '기획부', 
   '대리', 1900000, 170000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1025, '우재옥', '801103-1654442', '2000-10-01', '서울', '010-4563-2587', '영업부', 
   '사원', 1100000, 160000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1026, '김숙남', '810907-2015457', '2002-08-28', '경기', '010-2112-5225', '영업부', 
   '사원', 1050000, 150000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1027, '김영길', '801216-1898752', '2000-10-18', '서울', '019-8523-1478', '총무부', 
   '과장', 2340000, 170000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1028, '이남신', '810101-1010101', '2001-09-07', '제주', '016-1818-4848', '인사부', 
   '사원', 892000 , 110000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1029, '김말숙', '800301-2020202', '2000-09-08', '서울', '016-3535-3636', '총무부', 
   '사원', 920000 , 124000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1030, '정정해', '790210-2101010', '1999-10-17', '부산', '019-6564-6752', '총무부', 
   '과장', 2304000, 124000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1031, '지재환', '771115-1687988', '2001-01-21', '서울', '019-5552-7511', '기획부', 
   '부장', 2450000, 160000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1032, '심심해', '810206-2222222', '2000-05-05', '전북', '016-8888-7474', '자재부', 
   '사원', 880000 , 108000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1033, '김미나', '780505-2999999', '1998-06-07', '서울', '011-2444-4444', '영업부', 
   '사원', 1020000, 104000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1034, '이정석', '820505-1325468', '2005-09-26', '경기', '011-3697-7412', '기획부', 
   '사원', 1100000, 160000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1035, '정영희', '831010-2153252', '2002-05-16', '인천', NULL           , '개발부', 
   '사원', 1050000, 140000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1036, '이재영', '701126-2852147', '2003-08-10', '서울', '011-9999-9999', '자재부', 
   '사원', 960400 , 190000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1037, '최석규', '770129-1456987', '1998-10-15', '인천', '011-7777-7777', '홍보부', 
   '과장', 2350000, 187000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1038, '손인수', '791009-2321456', '1999-11-15', '부산', '010-6542-7412', '영업부', 
   '대리', 2000000, 150000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1039, '고순정', '800504-2000032', '2003-12-28', '경기', '010-2587-7895', '영업부', 
   '대리', 2010000, 160000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1040, '박세열', '790509-1635214', '2000-09-10', '경북', '016-4444-7777', '인사부', 
   '대리', 2100000, 130000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1041, '문길수', '721217-1951357', '2001-12-10', '충남', '016-4444-5555', '자재부', 
   '과장', 2300000, 150000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1042, '채정희', '810709-2000054', '2003-10-17', '경기', '011-5125-5511', '개발부', 
   '사원', 1020000, 200000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1043, '양미옥', '830504-2471523', '2003-09-24', '서울', '016-8548-6547', '영업부', 
   '사원', 1100000, 210000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1044, '지수환', '820305-1475286', '2004-01-21', '서울', '011-5555-7548', '영업부', 
   '사원', 1060000, 220000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1045, '홍원신', '690906-1985214', '2003-03-16', '전북', '011-7777-7777', '영업부', 
   '사원', 960000 , 152000);         
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1046, '허경운', '760105-1458752', '1999-05-04', '경남', '017-3333-3333', '총무부', 
   '부장', 2650000, 150000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1047, '산마루', '780505-1234567', '2001-07-15', '서울', '018-0505-0505', '영업부', 
   '대리', 2100000, 112000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1048, '이기상', '790604-1415141', '2001-06-07', '전남', NULL           , '개발부', 
   '대리', 2050000, 106000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1049, '이미성', '830908-2456548', '2000-04-07', '인천', '010-6654-8854', '개발부', 
   '사원', 1300000, 130000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1050, '이미인', '810403-2828287', '2003-06-07', '경기', '011-8585-5252', '홍보부', 
   '대리', 1950000, 103000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1051, '권영미', '790303-2155554', '2000-06-04', '서울', '011-5555-7548', '영업부', 
   '과장', 2260000, 104000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1052, '권옥경', '820406-2000456', '2000-10-10', '경기', '010-3644-5577', '기획부', 
   '사원', 1020000, 105000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1053, '김싱식', '800715-1313131', '1999-12-12', '전북', '011-7585-7474', '자재부', 
   '사원', 960000 , 108000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1054, '정상호', '810705-1212141', '1999-10-16', '강원', '016-1919-4242', '홍보부', 
   '사원', 980000 , 114000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1055, '정한나', '820506-2425153', '2004-06-07', '서울', '016-2424-4242', '영업부', 
   '사원', 1000000, 104000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1056, '전용재', '800605-1456987', '2004-08-13', '인천', '010-7549-8654', '영업부', 
   '대리', 1950000, 200000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1057, '이미경', '780406-2003214', '1998-02-11', '경기', '016-6542-7546', '자재부', 
   '부장', 2520000, 160000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1058, '김신제', '800709-1321456', '2003-08-08', '인천', '010-2415-5444', '기획부', 
   '대리', 1950000, 180000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1059, '임수봉', '810809-2121244', '2001-10-10', '서울', '011-4151-4154', '개발부', 
   '사원', 890000 , 102000);
INSERT INTO insa (num, name, ssn, ibsaDate, city, tel, buseo, jikwi, basicPay, sudang) VALUES
  (1060, '김신애', '810809-2111111', '2001-10-10', '서울', '011-4151-4444', '개발부', 
   '사원', 900000 , 102000);

COMMIT;
----------------------------
SELECT *
FROM insa;
--7369	SMITH	80/12/17
-- NLS : 날짜 형식 RR/MM/DD
-- 1) National Language Support (국가 지원 언어)
-- 2) NLS parameter는 SESSION, CLIENT, SERVER의 세 가지로 분류된다.
--      SESSION > CLIENT > SERVER
-- 예) 오라클 서버            <-          클라이언트도구 출장
--      미국                                  일본
--      달러                                  엔화
--                      원(통화기호)

SELECT empno,ename,hiredate
FROM emp;

-- NLS 설정 정보 확인(조회)
SELECT * 
FROM v$nls_parameters;

-- insa 테이블 생성 + INSERT 60명의 사원 추가

-- emp 테이블에서 사원 정보 조회( 사원번호, 사원명, 입사일자 )
-- [시험]                           월급(pay) = 기본급(sal) + 커미션(comm)
SELECT empno,ename,hiredate
        ,sal
--        ,comm
        ,NVL(comm,0) comm
        ,NVL2(comm,comm,0) comm
        ,COALESCE(sal + comm, sal,0) pay
        ,sal + NVL(comm,0) pay
FROM emp;
-- 오라클 NULL 의미 ?
-- NULL은 미확인 값이나 아직 적용되지 않은 값을 의미한다.
-- NULL 을 다른 값으로 대체해서 처리를 하자
-- NULL 처리하는 오라클 함수 : [ NVL()],[NVL2()],NULLIF(),COALESCE()4가지

--scott.emp
-- 이름은 'SMITH'이고, 직업은 CLERK 이다.
SELECT '이름은 '''|| ename || '''이고, 직업은 ' || job || ' 이다.'
FROM emp;

-- [문제] emp 테이블에서 직속상사가 알 수 없다 (미정)mgr 컬럼이 null 인 사원
SELECT e.*
    ,NVL(MGR,0) mgr
FROM emp e; -- 테이블의 별칭을 부여

-- [문제] emp 테이블에서 직속상사가 null인경우 'ceo' 문자열 출력
-- ORA-01722 : invalid number   first_name + last_name
--                                          + 문자열 연결 연산자 X
--                                        숫자 + 숫자

-- MGR              NUMBER(4) --> 문자열 변환    'CEO'

SELECT 
e.*
--    ,NVL(mgr , 0 ) mgr
--    ,NVL(mgr ,TO_CHAR()) mgr
--    mgr
    ,NVL(TO_CHAR(mgr),'CEO') mgr
    ,NVL2( mgr, ''||mgr,'CEO')
FROM emp e;
-- 왜 너만안됨?
-- 
DESC emp;
--MGR               NUMBER(4)     4자리 정수(숫자)

SELECT 0,'0'
FROM dual; -- 왼쪽은 문자열 오른쪽은 숫자

-- DQL : SELECT문
-- ALL, DISTINCT, AS
-- FROM emp e; SELECT e.*
-- NULL 의미?
-- NULL 처리 함수 ? NVL(),NVL2(),COALESCE()
-- NUMBER -> CHAR 변환 : TO_CHAR()
--                      TO_NUMBER(), TO_DATE()

WITH
    SELECT
FROM
WHERE
GROUP BY
HAVING
ORDER BY
-- WHERE 참/거짓 조건절 설명
SELECT *
FROM emp;
-- [문제] 부서번호가 10번인 사원들의 정보만 출력 (조회)
-- 자바 비교연산자 : == !=
-- 오라클 비교연산자 : = != ^= <>
SELECT *
FROM emp
WHERE deptno = 10;
--
7782	CLARK	MANAGER	7839	81/06/09	2450		10
7839	KING	PRESIDENT		81/11/17	5000		10
7934	MILLER	CLERK	7782	82/01/23	1300		10

-- [문제] emp 테이블에서 부서번호가 10번이 아닌 사원들의 정보만출력(조회)
SELECT *
FROM emp
WHERE NOT(deptno=10); -- NOT 부정 연산자
WHERE !(deptno=10); -- ORA- 00936
--!(deptno == 10)


--(deptno == 10)
--(deptno != 10)
WHERE deptno!=10;
WHERE deptno^=10;
WHERE deptno<>10;

-- [문제] emp 테이블에서 10번, 20번 사원들만 조회(출력)
SELECT *
FROM emp
WHERE NOT deptno = 30; --문제점
WHERE deptno !=30;
WHERE deptno = 10 OR deptno = 20;

SELECT *
FROM dept;

--자바 논리 연산자 : && || !
--오라클 논리 연산자 : AND OR NOT

--[ 문제 ] EMP 테이블에서 COMM 이 NULL인 사원의 정보를 조회
SELECT *
FROM emp
WHERE comm IS NOT NULL; 
WHERE comm IS NULL;

-- [문제] 사원명이  'king','KING','kiNG' 인 사원의 정보 조회.
-- COUNT() 그룹함수, 복수함수, 집계함수
--SELECT COUNT(*)
SELECT *
FROM emp
WHERE ename = UPPER('KING');
WHERE ename = 'king';

SELECT ename
    ,LOWER(ename)
    ,UPPER(ename)
    ,INITCAP(ename)
FROM emp 
WHERE job = 'CLERK';

-- [문제] 2000 이상 월급(pay) 이하 4000  받는 사원의 정보를 출력(조회)
--      pay = sal + comm
--  pay 기준으로 오름차순 정렬 : ORDER BY 절
SELECT empno, ename
    --, sal,comm
        ,sal + NVL(comm,0) pay
FROM emp
WHERE 2000<=pay AND pay <= 4000 --ORA-00904: "PAY": invalid identifier
ORDER BY PAY ; -- ASC 디폴트값
ORDER BY PAY DESC;
ORDER BY PAY ASC;







SELECT *
FROM emp
WHERE sal + NVL(comm,0) BETWEEN 2000 AND 4000;
--WHERE COALESCE(sal+comm,sal,0)>=2000 AND COALESCE(sal+comm,sal,0)<4000;

























