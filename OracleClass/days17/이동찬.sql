

CREATE TABLE card_table (
    card_number VARCHAR2(19) PRIMARY KEY
);


CREATE OR REPLACE FUNCTION generate_card_number RETURN VARCHAR2 IS
    v_card_number VARCHAR2(19);
    v_count NUMBER; -- v_count 변수 선언
BEGIN
    -- 중복되지 않는 카드 번호 생성
    LOOP
        v_card_number := 
            TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(1000, 9999))) || '-' ||
            TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(1000, 9999))) || '-' ||
            TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(1000, 9999))) || '-' ||
            TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(1000, 9999)));
        
        -- 생성된 카드 번호가 중복되지 않는지 확인
        SELECT COUNT(*)
        INTO v_count
        FROM card_table
        WHERE card_number = v_card_number;
        
        -- 중복되지 않은 카드 번호일 경우 반복문 종료
        EXIT WHEN v_count = 0;
    END LOOP;
    
    RETURN v_card_number;
EXCEPTION
    WHEN OTHERS THEN
        RETURN NULL; -- 예외가 발생할 경우 NULL을 반환하여 처리
END;

DECLARE
    v_generated_card_number VARCHAR2(19);
BEGIN
    -- 카드 번호 생성
    v_generated_card_number := generate_card_number();
    
    -- 생성된 카드 번호를 테이블에 삽입
    INSERT INTO card_table (card_number) VALUES (v_generated_card_number);
    
    DBMS_OUTPUT.PUT_LINE('생성된 카드 번호: ' || v_generated_card_number);
END;

  SELECT *
  FROM card_table;
























GRANT CREATE ANY DIRECTORY TO project;





























CREATE SEQUENCE SEQ_LOB
START WITH 1

INCREMENT BY 1

NOMAXVALUE

NOMINVALUE
NOCYCLE
NOCACHE;

CREATE TABLE TBL_LOB ( NO NUMBER
                    ,TXT_FILE CLOB);
INSERT INTO TBL_LOB(NO) VALUES(1);
INSERT INTO TBL_LOB VALUES(2,EMPTY_CLOB());



SELECT *
FROM TBL_LOB;


CREATE OR REPLACE DIRECTORY CLOB_DIR
AS 'C:\TEXTDATA\';

CREATE OR REPLACE PROCEDURE PCD_TBL_LOB_INSERT
(V_FILENAME IN VARCHAR2)
IS


V_LOCATOR_CLOB CLOB;

V_SOURCE_DATA_FILE BFILE := BFILENAME('CLOB_DIR', V_FILENAME);

V_DEST_OFFSET NUMBER := 1;

V_SRC_OFFSET NUMBER := 1;
V_LANG_CONTEXT NUMBER := DBMS_LOB.DEFAULT_LANG_CTX;
V_WARNING NUMBER;


BEGIN

INSERT INTO TBL_LOB(NO, TXT_FILE)
VALUES(SEQ_LOB.NEXTVAL, EMPTY_CLOBO)
RETURNING TXT_FILE INTO V_LOCATOR_CLOB;

DBMS_LOB.OPEN(V_SOURCE_DATA_FILE,
DBMS_LOB.LOB_READONLY);

DBMS_LOB.LOADCLOBFROMFILE(V_LOCATOR_CLOB,V_SOURCE_DATA_FILE,DBMS_LOB.GETLENGTH(V_SOURCE_DATA_FILE),
V_DEST_OFFSET,V_SRC_OFFSET,DBMS_LOB.DEFAULT_CSID,V_LANG_CONTEXT,V_WARNING);

DBMS_LOB.CLOSE(V_SOURCE_DATA_FILE);

COMMIT;
DBMS_OUTPUT.PUT_LINE('CLOB 타입 데이터 입력 성공 !!!');

--EXCEPTION

END;

















CREATE TABLE TBL_LOB2
(
NAME VARCHAR2(20),
IMG_NAME BLOB
);

CREATE OR REPLACE DIRECTORY BLOB_DIR
AS 'C:\TEXTDATA\';

CREATE OR REPLACE PROCEDURE PCD_TBL_BLOB_INSERT
(V_FILENAME IN VARCHAR2)
IS
    V_LOCATOR_BLOB BLOB;
    
    V_SOURCE_DATA_FILE BFILE:= BFILENAME('BLOB_DIR',V_FILENAME);
    
    V_DEST_OFFSET NUMBER :=1;
    V_SRC_OFFSET NUMBER :=1;

BEGIN
    INSERT INTO TBL_LOB2(NO,IMG_FILE)
    VALUES(SEQ_LOB.NEXTVAL,EMPTY_BLOB())
    RETURNING IMG_FILE INTO V_LOCATOR_CLOB;
    
    DBMS_LOB.OPEN(V_SOURCE_DATA_FILE,
                DBMS_LOB.LOB_READONLY);
                
    DBMS_LOB.LOADBLOBFROMFILE(V_LOCATOR_BLOB,
                                V_SOURCE_DATA_FILE,
                                DBMS_LOB.GETLENGTH(V_SOURCE_DATA_FILE),
                                V_DEST_OFFSET,
                                V_SRC_OFFSET
                                );
    DBMS_LOB.CLOSE(V_SOURCE_DATA_FILE);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('BLOB 타입 데이터 입력 성공!!!');
    
--    EXCEPTION

END;    
    
    
    
    
    

    
    
    
    
    













