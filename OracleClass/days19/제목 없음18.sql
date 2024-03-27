
SELECT *
FROM EVENT ; 


CREATE TABLE Event (
    Evnum number(4) NOT NULL PRIMARY KEY,
    Evcat varchar2(100) NOT NULL,
    Evname varchar2(100) NOT NULL,
    stdate date NOT NULL,
    endate date NOT NULL,
    AdminID varchar2(100) NOT NULL,
    Eposter blob NULL
);


CREATE TABLE Winner (
    Key number(8) NOT NULL,
    Wingrade varchar2(100) NOT NULL,
    phoneNumber varchar2(100) NOT NULL,
    UserID varchar2(100) NOT NULL,
    Evnum number(4) NOT NULL
);

CREATE TABLE Prize (
    Evnum number(4) NOT NULL,
    Price1 VARCHAR2(30) NOT NULL,
    Price2 VARCHAR2(30) NOT NULL,
    Price3 VARCHAR2(30) DEFAULT NULL
);





DELETE EVENT WHERE EVNUM =EVNUM;
DELETE winner WHERE EVNUM =EVNUM;

-- ������ ����
INSERT INTO Event VALUES (1, '����,���ϸ���,����,����', '���� �̺�Ʈ', TO_DATE('2024-03-10', 'YYYY-MM-DD')
, TO_DATE('2024-03-15', 'YYYY.MM.DD.'), '#admin001', NULL);
INSERT INTO Event VALUES (2, '����', '������ �̺�Ʈ', TO_DATE('2024-03-05', 'YYYY-MM-DD')
, TO_DATE('2024-03-10', 'YYYY.MM.DD.'), '#admin001', NULL);
INSERT INTO Event VALUES (3, '���ϸ���', '��ȭ �̺�Ʈ', TO_DATE('2024-03-01', 'YYYY-MM-DD')
, TO_DATE('2024-03-06', 'YYYY.MM.DD.'), '#admin001', NULL);
INSERT INTO Event VALUES (4, '����', 'ü�� �̺�Ʈ', TO_DATE('2024-02-25', 'YYYY-MM-DD')
, TO_DATE('2024-03-01', 'YYYY.MM.DD.'), '#admin001', NULL);
INSERT INTO Event VALUES (5, '����', '������ �̺�Ʈ', TO_DATE('2024-02-20', 'YYYY-MM-DD')
, TO_DATE('2024-02-25', 'YYYY-MM-DD'), '#admin001', NULL);


--������ ����

INSERT INTO Winner VALUES(1,1,'01012345678','user001', 1 );
INSERT INTO Winner VALUES(2,2,'01023456789','user002', 1 );
INSERT INTO Winner VALUES(3,3,'01034567890','user003', 1 );
INSERT INTO Winner VALUES(4,2,'01045678901','user004', 1 );
INSERT INTO Winner VALUES(5,3,'01056789012','user005', 1 );
INSERT INTO Winner VALUES(1,1,'01012345678','user006', 1 );
INSERT INTO Winner VALUES(2,2,'01023456789','user007', 1 );
INSERT INTO Winner VALUES(3,3,'01034567890','user008', 1 );
INSERT INTO Winner VALUES(4,2,'01045678901','user009', 1 );
INSERT INTO Winner VALUES(5,3,'01056789012','user010', 1 );
INSERT INTO Winner VALUES(1,1,'01012345678','user011', 1 );
INSERT INTO Winner VALUES(2,2,'01023456789','user012', 1 );
INSERT INTO Winner VALUES(3,3,'01034567890','user013', 1 );
INSERT INTO Winner VALUES(4,2,'01045678901','user014', 1 );
INSERT INTO Winner VALUES(5,3,'01056789012','user015', 1 );
INSERT INTO Winner VALUES(1,1,'01012345678','user011', 1 );
INSERT INTO Winner VALUES(2,2,'01023456789','user012', 1 );
INSERT INTO Winner VALUES(3,3,'01034567890','user013', 1 );
INSERT INTO Winner VALUES(4,2,'01045678901','user014', 1 );
INSERT INTO Winner VALUES(5,3,'01056789012','user015', 1 );

INSERT INTO Prize VALUES( 1,'������','������','����');      
INSERT INTO Prize VALUES( 2,'����','�λ�','���ֵ�');
INSERT INTO Prize VALUES( 3,'TV','�����','Ű����');




INSERT INTO flightuser VALUES ('user006', '��', '��ȣ', 'Lee', 'JunHo', 'password123', TO_DATE('1988-06-25', 'YYYY-MM-DD'), 'Male', 'user006@example.com', '01067890123', 'Korea', '3456-7890-1234-5678');
INSERT INTO flightuser VALUES ('user007', '��', '����', 'Jung', 'SuMin', 'pass456', TO_DATE('1992-09-30', 'YYYY-MM-DD'), 'Female', 'user007@example.com', '01078901234', 'Korea', '8901-2345-6789-0123');
INSERT INTO flightuser VALUES ('user008', '��', '�ÿ�', 'Lee', 'SiWoo', 'securepass', TO_DATE('1986-03-17', 'YYYY-MM-DD'), 'Male', 'user008@example.com', '01089012345', 'Japan', '2345-6789-0123-4567');
INSERT INTO flightuser VALUES ('user009', '��', '����', 'Park', 'JinYoung', 'mypassword', TO_DATE('1995-07-08', 'YYYY-MM-DD'), 'Male', 'user009@example.com', '01090123456', 'China', '6789-0123-4567-8901');
INSERT INTO flightuser VALUES ('user010', '��', '����', 'Choi', 'SuJin', 'p@ssw0rd', TO_DATE('1991-02-14', 'YYYY-MM-DD'), 'Female', 'user010@example.com', '01001234567', 'Korea', '0123-4567-8901-2345');
INSERT INTO flightuser VALUES ('user011', '��', '�¿�', 'Kim', 'TaeYoung', 'password123', TO_DATE('1989-10-05', 'YYYY-MM-DD'), 'Male', 'user011@example.com', '01012345678', 'Korea', '5678-9012-3456-7890');
INSERT INTO flightuser VALUES ('user012', '��', '����', 'Lee', 'SuBin', 'pass456', TO_DATE('1994-11-26', 'YYYY-MM-DD'), 'Female', 'user012@example.com', '01023456789', 'Korea', '9012-3456-7890-1234');
INSERT INTO flightuser VALUES ('user013', '��', '����', 'Park', 'MinJun', 'securepass', TO_DATE('1984-08-12', 'YYYY-MM-DD'), 'Male', 'user013@example.com', '01034567890', 'Japan', '2345-6789-0123-4567');
INSERT INTO flightuser VALUES ('user014', '��', '����', 'Son', 'JiWon', 'mypassword', TO_DATE('1983-12-31', 'YYYY-MM-DD'), 'Female', 'user014@example.com', '01045678901', 'China', '6789-0123-4567-8901');
INSERT INTO flightuser VALUES ('user015', '��', '����', 'Jang', 'SungWoo', 'p@ssw0rd', TO_DATE('1982-05-17', 'YYYY-MM-DD'), 'Male', 'user015@example.com', '01056789012', 'Korea', '0123-4567-8901-2345');
INSERT INTO flightuser VALUES ('user016', '��', '����', 'Kim', 'YoungHee', 'password123', TO_DATE('1987-09-22', 'YYYY-MM-DD'), 'Female', 'user016@example.com', '01067890123', 'Korea', '3456-7890-1234-5678');
INSERT INTO flightuser VALUES ('user017', '��', '�μ�', 'Lee', 'MinSoo', 'pass456', TO_DATE('1983-04-14', 'YYYY-MM-DD'), 'Male', 'user017@example.com', '01078901234', 'Korea', '8901-2345-6789-0123');
INSERT INTO flightuser VALUES ('user018', '��', '�̿�', 'Jang', 'MiYoung', 'securepass', TO_DATE('1990-12-01', 'YYYY-MM-DD'), 'Female', 'user018@example.com', '01089012345', 'Japan', '2345-6789-0123-4567');
INSERT INTO flightuser VALUES ('user019', '��', '��ȣ', 'Oh', 'JunHo', 'mypassword', TO_DATE('1988-08-30', 'YYYY-MM-DD'), 'Male', 'user019@example.com', '01090123456', 'China', '6789-0123-4567-8901');
INSERT INTO flightuser VALUES ('user020', '��', '����', 'Bae', 'SuJin', 'p@ssw0rd', TO_DATE('1992-03-07', 'YYYY-MM-DD'), 'Female', 'user020@example.com', '01001234567', 'Korea', '0123-4567-8901-2345');


---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------

DROP SEQUENCE DC_SEQEVE;
CREATE SEQUENCE DC_SEQEVE
START WITH 8;

SELECT DC_SEQEVE.currval
FROM DUAL;
---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------



EXEC EVENT_BLOB_INSERT('1','meal.htm');


CREATE OR REPLACE DIRECTORY BLOB_DIR
AS 'C:\E\Class\Workspace\OracleClass';


CREATE OR REPLACE PROCEDURE EVENT_BLOB_INSERT
(
pevnum number,
V_FILENAME IN VARCHAR2

)
IS
    V_LOCATOR_BLOB  BLOB;
    
    V_SOURCE_DATA_FILE BFILE := BFILENAME('BLOB_DIR', V_FILENAME);
    
    V_DEST_OFFSET    NUMBER := 1;
    V_SRC_OFFSET      NUMBER := 1;
    
BEGIN
         
         UPDATE event
         SET  
         eposter =  empty_blob()
         WHERE EVNUM = PEVNUM
         RETURNING eposter INTO V_LOCATOR_BLOB;
         
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
         
         DBMS_OUTPUT.PUT_LINE('CLOB Ÿ�� ������ �Է� ����!!!');
         
         EXCEPTION
            WHEN OTHERS THEN 
                DBMS_OUTPUT.PUT_LINE('CLOB Ÿ�� ������ �Է� ����!!!');
END;

CREATE OR REPLACE PROCEDURE DC_EVENT
(   pEvcat varchar2,
    pEvname varchar2,
    pstdate date,
    pendate date,
    pAdminID varchar2,
    pEposter varchar2
) 
IS
    vevnum number;
BEGIN
   
    SELECT DC_SEQEVE.NEXTVAL INTO vevnum FROM dual;

  
    INSERT INTO Event VALUES (vevnum, pEvcat, pEvname, pstdate, pendate, pAdminID, NULL);
    
       
    EVENT_BLOB_INSERT(vevnum, pEposter);

EXCEPTION
    WHEN OTHERS THEN 
        DBMS_OUTPUT.PUT_LINE('�̺�Ʈ �߰� �� ���� �߻�: ' || SQLERRM);
END;

BEGIN
    DC_EVENT('�ܼ�Ʈ', '2024 ��������', '2024-04-15', '2024-04-17', '#admin001', 'meal.htm');
END;

