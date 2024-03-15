-- SCOTT
-- (월) : 트랜잭션, 암호화, 스케줄러
-- 트랜잭션 ( A + B ) 계좌 이체
-- 예) 계좌이체
----------- A   X->출금           실패  성공
----------- B   Y->입금           성공  실패

-- DML문(I,U,D)      + LOCK(잠금)      -> 반드시 잠금 해제 ( COMMIT , ROLLBACK )
--700076
SELECT  USERENV('SESSIONID') -- 사용자환경 
FROM dual; 

--
SELECT *
FROM emp
WHERE ename= 'MILLER';

--  job CLERK
UPDATE  emp
SET job = 'CLERK'
WHERE ename = 'MILLER';
--
SELECT *
FROM emp
WHERE ename= 'MILLER';
--
ROLLBACK;

-- VIEW
-- PL/SQL : 저장함수, 저장프로시저, 트리거, 패키지
C Q R P XXXX
()
IS
BEGIN
    I  
    D
    S
    S
    I
    COMMIT;
E
    WHEN THEN
        ROLLBACK;
E;



























