--scott
-- (수) : 트랜잭션, 암호화, [스케줄러]
1) DBMS_JOB 패키지         ****
2) DBMS_SCHEDULER 패키지 (10G 이후)
--
1) 프로그램 준비( 테이블, 저장 프로시저, 저장 함수 )
2) 스케줄 설정
3) 잡 생성/제어 중지
---
CREATE TABLE TBL_JOB(
    seq number
        , insert_date date
);
---
CREATE OR REPLACE PROCEDURE up_job
IS
    vseq NUMBER;
BEGIN
    SELECT NVL(MAX(seq),0)+1    INTO vseq
    FROM tbl_job;
    
    INSERT INTO tbl_job VALUES( vseq,SYSDATE);
    COMMIT;
EXCEPTION
WHEN    OTHERS THEN
    ROLLBACK;
    DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;

--1) 잡 등록 : DBMS_JOB.SUMMIT
DBMS_JOB.SUMMIT 
(
    job OUT         OUT 잡 등록된 후에 잡번호
    what IN         IN  실행될 프로그램(SQL,PL/SQL)
    next_date           다음 실행될 날짜(시간)       SYSDATE
    interaval           잡의 실행 주기                
    no_parse            프로시저의 파싱 여부         FALSE
    instance            잡을 등록할떄 이 잡을 실행시킬수 있는 특정 인스턴스
    force               
)
-- 익명 프로시저에서 잡 등록
DECLARE
    vjob_no NUMBER;
BEGIN
    DBMS_JOB.SUBMIT(
        job=>vjob_no
        ,what=>'UP_JOB;'
        ,next_date=>sysdate
--        ,interval=>'sysdate +1' 하루에 한번 문자열 설정
--        ,interval=>'sysdate +1/24'
        ,interval=>'sysdate +1/24/60'
--        ,interval=>'NEXT_DAY(TRUNC(SYSDATE),'일요일') +15/24'
        --매주 일요일 오후 3시마다
        --,interval=>'LAST_DAY(TRUNC(SYSDATE)) +18/24+30/60/24'
        -- 매월 마지막 일의 6시 30분 마다...
    );
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('잡 등록된 번호 : ' vjob_no );
END;

SELECT *
FROM USER_JOBS;
-- 잡 중지 : DBMS_JOB.BROKEN
BEGIN
    DBMS_JOB.BROKEN(1,TRUE);
    COMMIT;
END;

BEGIN
    DBMS_JOB.BROKEN(1,FALSE);
    COMMIT;
END;
-- 잡 속성 변경 : DBMS_JOB.CHANGE
-- 주기에 상관없이 실행 DBMS_JOB.RUN ( 잡 번호 )_
BEGIN
    DBMS_JOB.RUN(1);
    COMMIT;
END;
-- 잡 삭제
BEGIN
    DBMS_JOB.REMOVE(1);
    COMMIT;
END;














