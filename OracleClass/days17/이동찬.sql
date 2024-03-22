

CREATE TABLE card_table (
    card_number VARCHAR2(19) PRIMARY KEY
);


CREATE OR REPLACE FUNCTION generate_card_number RETURN VARCHAR2 IS
    v_card_number VARCHAR2(19);
    v_count NUMBER; -- v_count ���� ����
BEGIN
    -- �ߺ����� �ʴ� ī�� ��ȣ ����
    LOOP
        v_card_number := 
            TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(1000, 9999))) || '-' ||
            TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(1000, 9999))) || '-' ||
            TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(1000, 9999))) || '-' ||
            TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(1000, 9999)));
        
        -- ������ ī�� ��ȣ�� �ߺ����� �ʴ��� Ȯ��
        SELECT COUNT(*)
        INTO v_count
        FROM card_table
        WHERE card_number = v_card_number;
        
        -- �ߺ����� ���� ī�� ��ȣ�� ��� �ݺ��� ����
        EXIT WHEN v_count = 0;
    END LOOP;
    
    RETURN v_card_number;
EXCEPTION
    WHEN OTHERS THEN
        RETURN NULL; -- ���ܰ� �߻��� ��� NULL�� ��ȯ�Ͽ� ó��
END;

DECLARE
    v_generated_card_number VARCHAR2(19);
BEGIN
    -- ī�� ��ȣ ����
    v_generated_card_number := generate_card_number();
    
    -- ������ ī�� ��ȣ�� ���̺� ����
    INSERT INTO card_table (card_number) VALUES (v_generated_card_number);
    
    DBMS_OUTPUT.PUT_LINE('������ ī�� ��ȣ: ' || v_generated_card_number);
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
DBMS_OUTPUT.PUT_LINE('CLOB Ÿ�� ������ �Է� ���� !!!');

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
    DBMS_OUTPUT.PUT_LINE('BLOB Ÿ�� ������ �Է� ����!!!');
    
--    EXCEPTION

END;    
    
    
    
    
    

    
    
    
    
    













