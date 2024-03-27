--계층적 질의( hierarchical query )

-- 관계형 데이터 베이스는 2차원(행/열) 테이블 구조에 의해 모든 데이터를 저장한다.
--  int [] m = new int[3] 열
--  int [][] m = new int [3] [4] 행/열

SELECT *
FROM dept;
--실무에서는 기업의 조직도 , 집안의 족보처럼 계층적인 데이터 구조를 많이 사용하고 있다.
-- 따라서 평면적인 구조를 가지는 테이블에서도 계층적인 데이터를 저장하여 조회할 수 있는 방법이 필요하다.
--, 관게형 데이터 베이스에서도 데이터간의 부모-자식 관계를 표현할 수 있는[컬럼]을 지정하여 계층적인 
-- 예) 쇼핑몰 사이트 구현 대분류/중분류/소분류 질분? 1개 테이블(계층구조), 3개 테이블 구현
--하나의 테이블에서 계층적인 구조를 표현하는 관계를 순환관계(recursive relationship)라고 한다.
-- 예) emp 계층구조...
--      ㄴ 부모-자식 관계를 표현할 수 있는 [컬럼] : mgr
select *
from emp;
--ORA-01788: CONNECT BY clause required in this query block
SELECT LEVEL            --(암기)
FROM dual
CONNECT BY LEVEL <=31;
--
	SELECT 	[LEVEL] {*,컬럼명 [alias],...}
	FROM	테이블명
	WHERE	조건
	START WITH 조건
	CONNECT BY [PRIOR 컬럼1명  비교연산자  컬럼2명]
		또는 
		   [컬럼1명 비교연산자 PRIOR 컬럼2명]
--
SELECT mgr,empno
        ,LPAD(' ', (LEVEL-1)*3) ||ename
        ,LEVEL
FROM emp
START WITH mgr IS NULL
--START WITH mgr ='7839'
CONNECT BY PRIOR empno =mgr; -- PRIOR 자식 = 부모; TOP_DOWN 출력형식
--CONNECT BY PRIOR mgr =empno; -- PRIOR 부모 = 자식; BOTTOM_UP 출력형식

다음은 mgr=7698인 BLAKE를 메니저로 둔 empno를 나열한 예이다.
SELECT mgr,empno,ename,LEVEL
FROM emp
WHERE mgr = 7698
START WITH mgr IS NULL
CONNECT BY PRIOR empno=mgr;

-- 예) 학과/학부/단과대
create table tbl_test(
    deptno number(3) not null primary key,
    dname varchar2(24) not null,
    college number(3),
    loc varchar2(10)
);
SELECT *
FROM tbl_test;

INSERT INTO tbl_test VALUES(101,'컴퓨터공학과',100,'1호관');
INSERT INTO tbl_test VALUES(102,'멀티미디어학과',100,'2호관');
INSERT INTO tbl_test VALUES(201,'전자공학과',200,'3호관');
INSERT INTO tbl_test VALUES(202,'기계공학과',200,'4호관');
INSERT INTO tbl_test VALUES(100,'정보미디어학부',10,NULL);
INSERT INTO tbl_test VALUES(200,'메카트로닉스학부',10,NULL);
INSERT INTO tbl_test VALUES(10,'공과대학',NULL,NULL);


DROP TABLE tbl_test;



SELECT LPAD(' ' , (LEVEL-1)*3  )|| dname
FROM tbl_test
START WITH deptno=10
CONNECT BY PRIOR deptno=college;

SELECT LPAD(' ' , (LEVEL-1)*3  )|| dname
FROM tbl_test
START WITH dname='공과대학'
CONNECT BY PRIOR deptno=college;

-- 계층구조 가지제거 방법

SELECT LPAD('ㄴ' , (LEVEL-1)*3  )|| dname
FROM tbl_test
--WHERE dname != '정보미디어학부' 자식노드는 사라지지않음
START WITH college IS NULL
CONNECT BY PRIOR deptno=college AND dname != '정보미디어학부' ;

-- 1. START WITH 절
-- 2. CONNECT BY 절 : 계층형 구조가 어떤 식으로 연결되는지를 기술하는 구문
--     PRIOR 연산자 : 
-- 3. CONNECT_BY_ROOT : 계층형 쿼리에서 최상위 로우(행)을 반환하는 연산자
-- 4. CONNECT_BY_ISLEAF : CONNECT BY 조건에 정의된 관계에 따라 해당 행이 최하위 자식행
--                        이면 1, 그렇지 않으면 0 반환하는 의사 컬럼.
-- 5. SYS_CONNECT_BY_PATH(column,char) : 루트 노드에서 시작해서 자신의 행까지
--                      연결 경로를 반환하는 함수
-- 6. CONNECT_BY_ISCYCLE : 루프(반복) 알고리즘 의사컬럼.    1/0 출력

--SELECT e.empno
--    ,LPAD(' ',3*(LEVEL-1)) || e.ename
--    ,LEVEL
--    ,d.dname,d.deptno
--FROM emp e,dept d
--WHERE e.deptno = d.deptno(+)
--START WITH e.mgr IS NULL
--CONNECT BY PRIOR e.empno=e.mgr;


--CONNECT_BY_ROOT 연산자:
SELECT e.empno
    ,LPAD(' ',3*(LEVEL-1)) || e.ename
    ,LEVEL
    ,e.deptno
    ,CONNECT_BY_ROOT ename
    ,CONNECT_BY_ISLEAF --의사컬럼
    ,SYS_CONNECT_BY_PATH(ename,'/')
FROM emp e
START WITH e.mgr IS NULL
CONNECT BY PRIOR e.empno=e.mgr;

-- 계층형 쿼리 정렬(ORDER SIBLINGS BY) 절

--[ 뷰(VIEW) ]

FROM user_tables; --all_XXX,dba,XXX 
FROM 테이블 또는 [뷰]

CREATE OR REPLACE [FORCE | NOFORCE] VIEW 뷰이름
		[(alias[,alias]...]
	AS subquery
	[WITH CHECK OPTION]
	[WITH READ ONLY];


OR REPLACE 같은 이름의 뷰가 있을 경우 무시하고 다시 생성 
FORCE 기본 테이블의 유무에 상관없이 뷰를 생성 
NOFORCE 기본 테이블이 있을 때만 뷰를 생성 
ALIAS 기본 테이블의 컬럼이름과 다르게 지정한 뷰의 컬럼명 부여 
WITH CHECK OPTION 뷰에 의해 access될 수 있는 행(row)만이 삽입, 수정 가능 
WITH READ ONLY DML 작업을 제한(단지 읽는 것만 가능) 











