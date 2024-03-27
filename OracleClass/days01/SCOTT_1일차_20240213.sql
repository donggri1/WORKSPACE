-- 접속한 사용자가 소유하고있는 테이블 목록을 조회하는 쿼리
SELECT *
FROM dba_tables;
FROM all_tables; 
FROM user_tables; -- 데이타 사전, 뷰(view) 현재접속한사용자
FROM tabs;
--[문제] tabs?


-- [문제] dept 테이블 정보를 조회하는 쿼리
SELECT *
FROM scott.dept;
---- [문제] emp(사원) 테이블 정보를 조회하는 쿼리
SELECT *
FROM emp;

--[문제] tabs?
-- data ditionary(자료사전== 데이터사전 == 데이터 딕셔너리) 이란?
--     ㄴ 테이블, 뷰