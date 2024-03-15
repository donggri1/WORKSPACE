--scott
-- (��) : Ʈ�����, ��ȣȭ, [�����ٷ�]
1) DBMS_JOB ��Ű��         ****
2) DBMS_SCHEDULER ��Ű�� (10G ����)
--
1) ���α׷� �غ�( ���̺�, ���� ���ν���, ���� �Լ� )
2) ������ ����
3) �� ����/���� ����
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

--1) �� ��� : DBMS_JOB.SUMMIT
DBMS_JOB.SUMMIT 
(
    job OUT         OUT �� ��ϵ� �Ŀ� ���ȣ
    what IN         IN  ����� ���α׷�(SQL,PL/SQL)
    next_date           ���� ����� ��¥(�ð�)       SYSDATE
    interaval           ���� ���� �ֱ�                
    no_parse            ���ν����� �Ľ� ����         FALSE
    instance            ���� ����ҋ� �� ���� �����ų�� �ִ� Ư�� �ν��Ͻ�
    force               
)
-- �͸� ���ν������� �� ���
DECLARE
    vjob_no NUMBER;
BEGIN
    DBMS_JOB.SUBMIT(
        job=>vjob_no
        ,what=>'UP_JOB;'
        ,next_date=>sysdate
--        ,interval=>'sysdate +1' �Ϸ翡 �ѹ� ���ڿ� ����
--        ,interval=>'sysdate +1/24'
        ,interval=>'sysdate +1/24/60'
--        ,interval=>'NEXT_DAY(TRUNC(SYSDATE),'�Ͽ���') +15/24'
        --���� �Ͽ��� ���� 3�ø���
        --,interval=>'LAST_DAY(TRUNC(SYSDATE)) +18/24+30/60/24'
        -- �ſ� ������ ���� 6�� 30�� ����...
    );
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('�� ��ϵ� ��ȣ : ' vjob_no );
END;

SELECT *
FROM USER_JOBS;
-- �� ���� : DBMS_JOB.BROKEN
BEGIN
    DBMS_JOB.BROKEN(1,TRUE);
    COMMIT;
END;

BEGIN
    DBMS_JOB.BROKEN(1,FALSE);
    COMMIT;
END;
-- �� �Ӽ� ���� : DBMS_JOB.CHANGE
-- �ֱ⿡ ������� ���� DBMS_JOB.RUN ( �� ��ȣ )_
BEGIN
    DBMS_JOB.RUN(1);
    COMMIT;
END;
-- �� ����
BEGIN
    DBMS_JOB.REMOVE(1);
    COMMIT;
END;














