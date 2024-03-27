���̺� ����� ���ּž��մϴ�.

��ǰ  �÷� ���� 

������ ���̺� ENTRYS ����

EVNENT EPOSTER blob �߰�
	  evname100-> 200 ���μ��� ���

CREATE TABLE Event (
    Evnum number(4) NOT NULL PRIMARY KEY,
    Evcat varchar2(100) NOT NULL,
    Evname varchar2(200) NOT NULL,
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
CREATE TABLE entrys (
    Key number(8) PRIMARY KEY,
    phoneNumber varchar2(100) NOT NULL,
    UserID varchar2(100) NOT NULL,
    Evnum number(4) NOT NULL
);

CREATE TABLE Prize (
    Keynum  number(4) PRIMARY KEY,
    Evnum number(4) NOT NULL,
    Price1 VARCHAR2(30) NOT NULL,
    countnum NUMBER(4) NOT NULL,
    GRADE NUMBER(4) DEFAULT NULL
);
ALTER TABLE Prize ADD CONSTRAINT FK_Event_TO_Prize_1 FOREIGN KEY (Evnum)
REFERENCES Event (Evnum) on delete cascade;




-- ������ ����
INSERT INTO Event VALUES (1, '����', '��������ã�ƶ�', TO_DATE('2024-03-10', 'YYYY-MM-DD')
, TO_DATE('2024-03-28', 'YYYY.MM.DD.'), '#admin001', NULL);
INSERT INTO Event VALUES (2, '����', '������ �̺�Ʈ', TO_DATE('2024-03-10', 'YYYY-MM-DD')
, TO_DATE('2024-03-25', 'YYYY.MM.DD.'), '#admin001', NULL);
INSERT INTO Event VALUES (3, '���ϸ���', '��ȭ �̺�Ʈ', TO_DATE('2024-03-01', 'YYYY-MM-DD')
, TO_DATE('2024-03-06', 'YYYY.MM.DD.'), '#admin001', NULL);
INSERT INTO Event VALUES (4, '����', 'ü�� �̺�Ʈ', TO_DATE('2024-02-25', 'YYYY-MM-DD')
, TO_DATE('2024-03-01', 'YYYY.MM.DD.'), '#admin001', NULL);
INSERT INTO Event VALUES (5, '����', '������ �̺�Ʈ', TO_DATE('2024-02-20', 'YYYY-MM-DD')
, TO_DATE('2024-02-25', 'YYYY-MM-DD'), '#admin001', NULL);

SELECT *
FROM EVENT;
--������ ����



INSERT INTO Prize (Keynum, Evnum, Price1, countnum, GRADE) VALUES (1, 1, '������', 1, 1);
INSERT INTO Prize (Keynum, Evnum, Price1, countnum, GRADE) VALUES (2, 1, '������', 2, 2);
INSERT INTO Prize (Keynum, Evnum, Price1, countnum, GRADE) VALUES (3, 1, '������', 3, 3);
INSERT INTO Prize (Keynum, Evnum, Price1, countnum, GRADE) VALUES (4, 2, '��ȭ��ǰ�� 100����', 2, 1);
INSERT INTO Prize (Keynum, Evnum, Price1, countnum, GRADE) VALUES (5, 2, '�����װ� ��ǰ�� 50����', 5, 2);
INSERT INTO Prize (Keynum, Evnum, Price1, countnum, GRADE) VALUES (6, 2, '�ֿ� ��ǰ�� 5õ��', 10, 3);
INSERT INTO Prize (Keynum, Evnum, Price1, countnum, GRADE) VALUES (7, 3, '���ϸ��� 500000��', 1, 1);
INSERT INTO Prize (Keynum, Evnum, Price1, countnum, GRADE) VALUES (8, 3, '���ϸ��� 300000��', 3, 2);
INSERT INTO Prize (Keynum, Evnum, Price1, countnum, GRADE) VALUES (9, 3, '���ϸ��� 100000��', 5, 3);
INSERT INTO Prize (Keynum, Evnum, Price1, countnum, GRADE) VALUES (10, 4, '�����װ� ����', 5, 1);


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


CREATE SEQUENCE DC_SEQEVE
START WITH 8;

CREATE SEQUENCE DCDRAW;

SELECT DC_SEQEVE.currval
FROM DUAL;
---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------
---------------------------------------------------------



--EXEC EVENT_BLOB_INSERT('1','meal.htm');


CREATE OR REPLACE DIRECTORY BLOB_DIR
AS 'C:\E\Class\Workspace\OracleClass';
-- ������ ���ÿ� pdf���ϵ� �Էµǰ��ϴ� ������Ʈ ���ν��� ����
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
         DBMS_OUTPUT.PUT_LINE('�̹��� �Է� ����!!!');
         EXCEPTION
            WHEN OTHERS THEN 
                DBMS_OUTPUT.PUT_LINE('�̹��� �Է� ����!!!');
END;

-- 
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
        DBMS_OUTPUT.PUT_LINE('�̺�Ʈ �߰� �� ���� �߻� ' );
END;

-- �̺�Ʈ ���� 

BEGIN
    DC_EVENT
    ('�ܼ�Ʈ', '2024 ��������', '2024-04-15', '2024-04-17', '#admin001', 'meal.htm');
END;


-- ī�װ� �����Ͽ� �������� �̺�ƮȮ��
-- ī�װ� �����Ͽ� �������� �̺�ƮȮ��
-- ī�װ� �����Ͽ� �������� �̺�ƮȮ��
CREATE OR REPLACE PROCEDURE SELEVENT(
    pcategory IN VARCHAR2
)
IS
    vdate DATE;
BEGIN
    vdate := SYSDATE;

    FOR event_rec IN (SELECT * FROM Event WHERE Evcat LIKE '%' || pcategory || '%'
    AND stdate <= vdate AND endate >= vdate)
    LOOP
    
        DBMS_OUTPUT.PUT_LINE('�̺�Ʈ ��ȣ: ' || event_rec.Evnum);
        DBMS_OUTPUT.PUT_LINE('�̺�Ʈ �׸�: ' || event_rec.Evcat);
        DBMS_OUTPUT.PUT_LINE('�̺�Ʈ �̸�: ' || event_rec.Evname);
        DBMS_OUTPUT.PUT_LINE('������: ' || TO_CHAR(event_rec.stdate, 'YYYY-MM-DD'));
        DBMS_OUTPUT.PUT_LINE('������: ' || TO_CHAR(event_rec.endate, 'YYYY-MM-DD'));
        DBMS_OUTPUT.PUT_LINE('������ ���̵�: ' || event_rec.AdminID);
    END LOOP;
END;


EXEC SELEVENT('����');

-- ����� �̺�Ʈ �ڵ� Ȯ��
-- ����� �̺�Ʈ �ڵ� Ȯ��
-- ����� �̺�Ʈ �ڵ� Ȯ��

CREATE OR REPLACE PROCEDURE ENDEDEVENT
IS
    vdate VARCHAR2(50);
BEGIN
    vdate := SYSDATE;

    FOR event_rec IN (SELECT * FROM Event WHERE endate < vdate)
    LOOP
        DBMS_OUTPUT.PUT_LINE('�̺�Ʈ ��ȣ: ' || event_rec.Evnum);
        DBMS_OUTPUT.PUT_LINE('�̺�Ʈ �̸�: ' || event_rec.Evname);
        DBMS_OUTPUT.PUT_LINE('������: ' || TO_CHAR(event_rec.endate, 'YYYY-MM-DD'));
        DBMS_OUTPUT.PUT_LINE('�̺�Ʈ ����: �����');
        
    END LOOP;
END;

EXEC ENDEDEVENT;




----------
----------
------------------------
----------
--------------

CREATE SEQUENCE KeySequence;

CREATE OR REPLACE PROCEDURE EnterEvent (
    pUserID IN VARCHAR2,
    pPhoneNumber IN VARCHAR2,
    pEventNum IN Event.Evnum%TYPE
) AS

    vcount number;
BEGIN
       
       
    SELECT COUNT(*) INTO vcount FROM entrys WHERE evnum=pEventNum AND 
    USERID = puserid ;

    
    IF vcount >=1
    THEN
        DBMS_OUTPUT.PUT_LINE('�̹� �����ϼ̽��ϴ�.');
    ELSE
        INSERT INTO entrys (Key, PhoneNumber, UserID, Evnum)
        VALUES (KeySequence.NEXTVAL, pPhoneNumber, pUserID, pEventNum);
            DBMS_OUTPUT.PUT_LINE('�̺�Ʈ ���� �Ϸ�Ǿ����ϴ�.');
    END IF;    

    
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('�̺�Ʈ ���� �� ������ �߻��߽��ϴ�');
END;

BEGIN
    EnterEvent('user006', '01067890123', 1);
    EnterEvent('user007', '01078901234', 1);
    EnterEvent('user008', '01089012345', 1);
    EnterEvent('user009', '01090123456', 1);
    EnterEvent('user010', '01001234567', 1);
    EnterEvent('user011', '01067890123', 2);
    EnterEvent('user012', '01078901234', 2);
    EnterEvent('user013', '01089012345', 2);
    EnterEvent('user014', '01090123456', 2);
    EnterEvent('user015', '01001234567', 2);
    EnterEvent('user016', '01067890123', 2);
    EnterEvent('user017', '01078901234', 2);
    EnterEvent('user018', '01089012345', 3);
    EnterEvent('user019', '01090123456', 3);
    EnterEvent('user020', '01001234567', 3);
    EnterEvent('user001', '01067890123', 3);
    EnterEvent('user002', '01078901234', 3);
    EnterEvent('user003', '01089012345', 3);
    EnterEvent('user004', '01090123456', 3);
    EnterEvent('user005', '01001234567', 4);
    COMMIT;
END;



---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
-- ��ǰ��õ
--�������� ���������ؼ� WINNER�� �̵�
---------------------------------------------------


CREATE OR REPLACE PROCEDURE draweventwinners(
    p_evnum  event.evnum%TYPE
)
AS
    v_totalentries NUMBER;
    v_winnercount NUMBER;
    CURSOR v_prizes IS
        SELECT keynum, price1, countnum
        FROM prize
        WHERE evnum = p_evnum;
BEGIN
    SELECT COUNT(*)
    INTO v_totalentries
    FROM entrys
    WHERE evnum = p_evnum; -- �̺�Ʈ �����ڼ�
    
    FOR prizerecord IN v_prizes LOOP
        IF prizerecord.countnum >= v_totalentries THEN
            v_winnercount := v_totalentries;
        ELSE
            v_winnercount := prizerecord.countnum;
        END IF;
        
        FOR I IN 1..v_winnercount LOOP
            INSERT INTO winner (KEY, wingrade, phonenumber, userid, evnum)
            SELECT dcdraw.NEXTVAL, prizerecord.price1, E.phonenumber, E.userid, E.evnum
            FROM (
                SELECT KEY, phonenumber, userid, evnum
                FROM entrys
                WHERE evnum = p_evnum
                AND (KEY,evnum) NOT IN (SELECT KEY,evnum FROM winner)
                ORDER BY dbms_random.VALUE
            ) E
            WHERE ROWNUM = 1;
              COMMIT;
        END LOOP;
    END LOOP;
      dbms_output.put_line(p_evnum ||'�� �̺�Ʈ�� ��÷�ڰ� ��÷�Ǿ����ϴ�.' );
    FOR  winnerrecord IN (SELECT * FROM winner WHERE evnum = p_evnum) LOOP
  
    dbms_output.put_line('��÷�� : ' || winnerrecord.userid || ', ��ǰ : ' ||winnerrecord.wingrade  || ' ���ϵ帳�ϴ� !!');
    
    END LOOP;
EXCEPTION
    WHEN OTHERS THEN
        dbms_output.put_line('Error occurred ' );
        ROLLBACK;
END ;

exec DrawEventWinners(1);
exec DrawEventWinners(2);
exec DrawEventWinners(3);
exec DrawEventWinners(4);


