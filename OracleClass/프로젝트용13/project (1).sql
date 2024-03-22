-- ���� ���谡 �ִ� ���̺� ����
ALTER TABLE payrefund DROP CONSTRAINT FK_Scplane_TO_payrefund_1;
ALTER TABLE Scplane DROP CONSTRAINT FK_airplane_TO_Scplane_1;
ALTER TABLE SEAT_NUM DROP CONSTRAINT FK_airplane_TO_SEAT_NUM_1;
ALTER TABLE payrefund DROP CONSTRAINT FK_flightuser_TO_payrefund_1;
ALTER TABLE yesno DROP CONSTRAINT FK_Contract_TO_yesno_1;
ALTER TABLE Ifare DROP CONSTRAINT FK_Adminstrator_TO_Ifare_1;
ALTER TABLE Mtracking DROP CONSTRAINT FK_flightuser_TO_Mtracking_1;
ALTER TABLE dfare DROP CONSTRAINT FK_Adminstrator_TO_dfare_1;
ALTER TABLE L_rule DROP CONSTRAINT FK_R_section_TO_L_rule_1;
ALTER TABLE Notice DROP CONSTRAINT FK_Adminstrator_TO_Notice_1;
ALTER TABLE Rfamily DROP CONSTRAINT FK_flightuser_TO_Rfamily_1;
ALTER TABLE Cservice DROP CONSTRAINT FK_Adminstrator_TO_Cservice_1;

-- ���� ���谡 ���� ���̺� ����
drop table loginhis;
DROP TABLE CARD_USE;
DROP TABLE GIFTCARD;
DROP TABLE Contract;
DROP TABLE Event;
DROP TABLE Winner;
DROP TABLE Prize;
DROP TABLE Adminstrator;
DROP TABLE Userdetail;
DROP TABLE S_Grade;
DROP TABLE Movie;
DROP TABLE TV;
DROP TABLE Music;
DROP TABLE Bpass;
DROP TABLE flight_meal;
DROP TABLE Scplane;
DROP TABLE SEAT_NUM;
DROP TABLE payrefund;
DROP TABLE Ifare;
DROP TABLE yesno;
DROP TABLE Customerc;
DROP TABLE dfare;
DROP TABLE LOUNGE_INFO;
DROP TABLE L_rule;
DROP TABLE R_section;
DROP TABLE Notice;
DROP TABLE Rfamily;
DROP TABLE Cservice;
DROP TABLE airplane;
DROP TABLE Mtracking;
DROP TABLE flightuser;


----------------------------------------------------���̺� ���� �� ---------------------------------------------------------------
----------------------------------------------------���̺� ���� �� ---------------------------------------------------------------
----------------------------------------------------���̺� ���� �� ---------------------------------------------------------------
----------------------------------------------------���̺� ���� �� ---------------------------------------------------------------
----------------------------------------------------���̺� ���� �� ---------------------------------------------------------------
----------------------------------------------------���̺� ���� �� ---------------------------------------------------------------
----------------------------------------------------���̺� ���� �� ---------------------------------------------------------------
----------------------------------------------------���̺� ���� �� ---------------------------------------------------------------
----------------------------------------------------���̺� ���� �� ---------------------------------------------------------------
----------------------------------------------------���̺� ���� �� ---------------------------------------------------------------

CREATE TABLE flightuser (
    UserID varchar2(100) NOT NULL,
    Korlastname varchar2(20) NOT NULL,
    Korfirstname varchar2(100) NOT NULL,
    lastname varchar2(100) NOT NULL,
    firstname varchar2(100) NOT NULL,
    password varchar2(200) NOT NULL,
    birthdate date NOT NULL,
    gender varchar2(6) NOT NULL,
    emailaddress varchar2(200) NOT NULL,
    phoneNumber varchar2(200) NOT NULL,
    Anation varchar2(200) NOT NULL,
    Skypassnumber varchar2(200) NOT NULL
);

CREATE TABLE Loginhis (
	UserID	varchar2(100)		NOT NULL,
	logd	varchar2(100)		NULL
);

CREATE TABLE Cservice (
    CS_num VARCHAR2(4) NOT NULL,
    Area VARCHAR2(30) NOT NULL,
    Country_name VARCHAR2(30) NOT NULL,
    CS_call1 VARCHAR2(50) NOT NULL,
    CS_call2 VARCHAR2(50) NULL,
    lang_time clob NOT NULL,
    AdminID varchar2(100) NOT NULL
);

CREATE TABLE Rfamily (
    relation VARCHAR2(20) NOT NULL,
    status VARCHAR2(10) NULL,
    request_date DATE DEFAULT SYSDATE NULL,
    family_id VARCHAR2(100) NOT NULL,
    UserID varchar2(100) NOT NULL
);

CREATE TABLE Notice (
    Notice_num VARCHAR2(3) NOT NULL,
    Notice_title VARCHAR2(200) NOT NULL,
    Notice_contents clob NOT NULL,
    Notice_topic VARCHAR2(20) NOT NULL,
    AdminID varchar2(100) NOT NULL
);

CREATE TABLE R_section (
    ROUTE_SECTION VARCHAR2(50) NOT NULL,
    dairport VARCHAR2(1000) NOT NULL,
    aairport varchar2(1000) NOT NULL
);

CREATE TABLE L_rule (
    LUGREGULAR_NUM NUMBER(2) NOT NULL,
    SEAT_GRADE VARCHAR2(20) NOT NULL,
    numberofluggage NUMBER(2) NOT NULL,
    EXCESS_FEE NUMBER(8) NOT NULL, 
    ROUTE_SECTION VARCHAR2(50) NOT NULL
);

CREATE TABLE LOUNGE_INFO (
    LOUNGE_NUM VARCHAR2(10) NOT NULL,
    LOUNGE_NAME VARCHAR2(100) NULL,
    DESTINATION_AIRPORT VARCHAR2(50) NOT NULL,
    COUNTRY VARCHAR2(40) NOT NULL,
    LOCATION VARCHAR2(1000) NOT NULL,
    OPERATING_TIME clob NOT NULL,
    OPERATOR VARCHAR2(10) NOT NULL,
    ENTRY_PASSENGER clob NOT NULL,
    SERVICE VARCHAR2(500) NOT NULL,
    ETC VARCHAR2(300) NULL
);

CREATE TABLE dfare (
    Keynum number(4) NOT NULL,
    peak varchar2(100) NOT NULL,
    discount varchar2(100) NOT NULL,
    timezone varchar2(100) NOT NULL,
    sg varchar2(50) NOT NULL,
    route varchar2(200) NOT NULL,
    fare number NOT NULL,
    redis number NOT NULL,
    AdminID varchar2(100) NOT NULL,
    wknddy varchar2(100) null
);

CREATE TABLE airplane (
    asnum varchar2(100) NOT NULL,
    AIRLINE VARCHAR(30) NULL,
    totalseat NUMBER(4) NOT NULL,
    airmodel VARCHAR(30) NULL,
    M_DATE DATE NULL,
    FCLA_COUNT NUMBER(3) NULL,
    PreCLA_COUNT NUMBER(3) NULL,
    NCLA_COUNT NUMBER(3) NULL,
    PRECLA_Features VARCHAR2(300) NULL,
    NCLA_Features VARCHAR2(300) NULL,
    FCLA_Features varchar2(300) null
);

CREATE TABLE Mtracking (
    Tracking_num NUMBER NOT NULL,
    Consumtion_date DATE DEFAULT SYSDATE NULL,
    Amount_Mileage NUMBER NOT NULL,
    airline_type VARCHAR2(50) NOT NULL,
    spendorearned VARCHAR2(10) NOT NULL,
    UserID varchar2(100) NOT NULL
);

CREATE TABLE payrefund (
    SerialNumber number NOT NULL,
    payrefund varchar2(50) NOT NULL,
    pmethod varchar2(70) DEFAULT 'ī��' NOT NULL,
    flight varchar2(50) DEFAULT '����' NOT NULL,
    seatNumber varchar2(50) NULL,
    drdate date default sysdate NOT NULL,
    nluggage number(2) DEFAULT 0 NULL,
    cost number NOT NULL,
    mileage number null,
    UserID varchar2(100) NOT NULL,
    renum number NOT NULL,
    GIFTCARDNUMBER VARCHAR2(100) NULL,
    PIN_NUM number(6) null
);

CREATE TABLE SEAT_NUM (
    SEAT_CODE VARCHAR2(20) NOT NULL,
    SEAT_NUM VARCHAR2(20) NOT NULL,
    SEAT_GRADE VARCHAR2(100) NULL,
    asnum varchar2(100) NOT NULL
);

CREATE TABLE Scplane (
    renum number NOT NULL,
    food varchar2(100) DEFAULT '(�⳻�� ��������)' NULL,
    ddate date NOT NULL,
    adate date NOT NULL,
    dnation varchar2(100) NOT NULL,
    anation varchar2(100) NOT NULL,
    AdminID varchar2(100) NOT NULL,
    fnumber varchar2(100) NOT NULL,
    aairport varchar2(100) NOT NULL,
    dairport varchar2(100) NOT NULL,
    GATE number(4) NULL,
    Terminal number(2) NOT NULL,
    asnum varchar2(100) NOT NULL
);

COMMENT ON COLUMN Scplane.dnation IS '�ѱ�����';

COMMENT ON COLUMN Scplane.anation IS '�ѱ�,�Ϻ�,�߱�,�̱�';

CREATE TABLE Bpass (
    Key VARCHAR2(10) NOT NULL,
    dairport varchar2(100) NOT NULL,
    aairport varchar2(100) NOT NULL,
    ddate date NOT NULL,
    SEAT_NUM VARCHAR2(5) NOT NULL,
    PNAME VARCHAR2(200) NOT NULL,
    GATE NUMBER(4) NULL,
    TERMINAL NUMBER(2) NOT NULL,
    UserID varchar2(100) NOT NULL
);

CREATE TABLE flight_meal (
    meal_code NUMBER(2) NOT NULL,
    menu VARCHAR2(300) NULL,
    MENU_PDF BLOB NULL
);

CREATE TABLE Customerc (
    Q_num NUMBER NOT NULL,
    type VARCHAR2(12) NOT NULL,
    Field VARCHAR2(60) NOT NULL,
    F_NAME VARCHAR2(20) NOT NULL,
    L_NAME VARCHAR2(20) NOT NULL,
    P_NUM VARCHAR2(20) DEFAULT '(82)' NOT NULL,
    Email VARCHAR2(40) NOT NULL,
    title VARCHAR2(100) NOT NULL,
    content varchar2(3000) NOT NULL,
    SP_NUM VARCHAR2(20) NULL,
    renum VARCHAR2(8) NULL,
    e_check NUMBER(1) NOT NULL,
    city_arr VARCHAR2(40) NULL,
    start_city VARCHAR2(40) NULL,
    arr_date DATE NULL,
    Flights VARCHAR2(6) NULL
);

CREATE TABLE yesno (
    Contrat_num varchar2(4) NOT NULL,
    agree varchar2(100) NOT NULL,
    Agree_date date NOT NULL,
    UserID varchar2(100) NOT NULL,
    Contract_code number NOT NULL
);

COMMENT ON COLUMN yesno.agree IS '����/����';

CREATE TABLE Ifare (
    Keynum number(4) NOT NULL,
    starta varchar2(100) NOT NULL,
    arrive varchar2(100) NOT NULL,
    sg varchar2(50) NOT NULL,
    fare number NOT NULL,
    redis number NOT NULL,
    tax number NOT NULL,
    fuelch number NOT NULL,
    AdminID varchar2(100) NOT NULL
);

CREATE TABLE CARD_USE (
    record_num NUMBER(10) NOT NULL,
    section VARCHAR(12) NOT NULL,
    tdate DATE NOT NULL,
    amount number NOT NULL,
    CARD_NUM VARCHAR2(19) NOT NULL
);
CREATE TABLE GIFTCARD (
    CARD_NUM VARCHAR2(19) NOT NULL,
    message VARCHAR2(450) NOT NULL,
    PIN_NUM NUMBER(6) NOT NULL,
    Recipient VARCHAR2(30) NOT NULL,
    Recipient_PNUM varchar2(20) NOT NULL,
    SENDER VARCHAR2(30) NOT NULL,
    SENDER_PNUM varchar2(20) NOT NULL,
    amount NUMBER(7) NOT NULL
);

CREATE TABLE Contract (
    Contract_code number NOT NULL,
    Essentiality varchar2(6) NOT NULL,
    Contract_title varchar2(150) NOT NULL,
    Contract_contents varchar2(3000) NOT NULL
);

COMMENT ON COLUMN Contract.Essentiality IS '�ʼ�/����';

COMMENT ON COLUMN Contract.Contract_title IS '50�ڳ���';

CREATE TABLE Event (
    Evnum number(4) NOT NULL,
    Evcat varchar2(100) NOT NULL,
    Evname varchar2(100) NOT NULL,
    stdate date NOT NULL,
    endate date NOT NULL,
    AdminID varchar2(100) NOT NULL
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
    Price3 VARCHAR2(30) NOT NULL
);

CREATE TABLE Adminstrator (
    AdminID varchar2(100) NOT NULL,
    Korlastname varchar2(20) NOT NULL,
    Korfirstname varchar2(100) NOT NULL,
    lastname varchar2(100) NOT NULL,
    firstname varchar2(100) NOT NULL,
    password varchar2(200) NOT NULL,
    birthdate date NOT NULL,
    gender varchar2(6) NOT NULL,
    emailaddress varchar2(200) NOT NULL,
    phoneNumber varchar2(200) NOT NULL,
    Area_Nation varchar2(200) NOT NULL,
    Skypassnumber varchar2(200) NOT NULL
);


DROP TABLE USERDEtail;

CREATE TABLE Userdetail (
    UserID varchar2(100) NOT NULL,
    totalmile number DEFAULT 0 NULL,
    usergrade varchar2(100) DEFAULT '��ī���н� Ŭ��' NULL,
    family_id VARCHAR2(100) NULL,
    grade_date DATE DEFAULT SYSDATE NULL
);

CREATE TABLE S_Grade (
    Key NUMBER NOT NULL,
    grade varchar2(100) DEFAULT '��ī���н� Ŭ��' NOT NULL,
    totalmile NUMBER DEFAULT 0 NOT NULL,
    minarr NUMBER DEFAULT 0 NOT NULL
);


--���̺� ����
CREATE TABLE Movie (
    MovieID NUMBER PRIMARY KEY,
    Title varchar2(100) NOT NULL,
    Duration date NOT NULL,
    Category varchar2(100) NOT NULL,
    Content clob NOT NULL,
    Lang varchar2(20) NOT NULL
);
CREATE TABLE TV (
    TVID NUMBER PRIMARY KEY,
    Title varchar2(100) NOT NULL,
    duration date NOT NULL,
    cate varchar2(100) NOT NULL,
    content clob NOT NULL
);
CREATE TABLE Music (
    MusicID NUMBER PRIMARY KEY,
    Title varchar2(100) NOT NULL,
    Duration date NOT NULL,
    cate varchar2(100) NOT NULL,
    content clob NOT NULL
);




ALTER TABLE flightuser ADD CONSTRAINT PK_FLIGHTUSER PRIMARY KEY (UserID);

ALTER TABLE Cservice ADD CONSTRAINT PK_CSERVICE PRIMARY KEY (CS_num);

ALTER TABLE Rfamily ADD CONSTRAINT PK_RFAMILY PRIMARY KEY (userid);

ALTER TABLE Notice ADD CONSTRAINT PK_NOTICE PRIMARY KEY (Notice_num);

ALTER TABLE R_section ADD CONSTRAINT PK_R_SECTION PRIMARY KEY (ROUTE_SECTION);

ALTER TABLE L_rule ADD CONSTRAINT PK_L_RULE PRIMARY KEY (LUGREGULAR_NUM);

ALTER TABLE LOUNGE_INFO ADD CONSTRAINT PK_LOUNGE_INFO PRIMARY KEY (LOUNGE_NUM);

ALTER TABLE dfare ADD CONSTRAINT PK_DFARE PRIMARY KEY (Keynum);

ALTER TABLE airplane ADD CONSTRAINT PK_AIRPLANE PRIMARY KEY (asnum);

ALTER TABLE Mtracking ADD CONSTRAINT PK_MTRACKING PRIMARY KEY (Tracking_num);

ALTER TABLE payrefund ADD CONSTRAINT PK_PAYREFUND PRIMARY KEY (SerialNumber);

ALTER TABLE SEAT_NUM ADD CONSTRAINT PK_SEAT_NUM PRIMARY KEY (SEAT_CODE);

ALTER TABLE Scplane ADD CONSTRAINT PK_SCPLANE PRIMARY KEY (renum);

ALTER TABLE Bpass ADD CONSTRAINT PK_BPASS PRIMARY KEY (Key);

ALTER TABLE flight_meal ADD CONSTRAINT PK_FLIGHT_MEAL PRIMARY KEY (meal_code);

ALTER TABLE Customerc ADD CONSTRAINT PK_CUSTOMERC PRIMARY KEY (Q_num);

ALTER TABLE yesno ADD CONSTRAINT PK_YESNO PRIMARY KEY (Contrat_num);

ALTER TABLE Ifare ADD CONSTRAINT PK_IFARE PRIMARY KEY (Keynum);

ALTER TABLE CARD_USE ADD CONSTRAINT PK_CARD_USE PRIMARY KEY (record_num);

ALTER TABLE GIFTCARD ADD CONSTRAINT PK_GIFTCARD PRIMARY KEY (CARD_NUM);

ALTER TABLE Contract ADD CONSTRAINT PK_CONTRACT PRIMARY KEY (Contract_code);

ALTER TABLE Event ADD CONSTRAINT PK_EVENT PRIMARY KEY (Evnum);

ALTER TABLE Winner ADD CONSTRAINT PK_WINNER PRIMARY KEY (Key);

ALTER TABLE Prize ADD CONSTRAINT PK_PRIZE PRIMARY KEY (Evnum);

ALTER TABLE Adminstrator ADD CONSTRAINT PK_ADMINSTRATOR PRIMARY KEY (AdminID);

ALTER TABLE Userdetail ADD CONSTRAINT PK_USERDETAIL PRIMARY KEY (UserID);

ALTER TABLE S_Grade ADD CONSTRAINT PK_S_GRADE PRIMARY KEY (Key);

ALTER TABLE Loginhis ADD CONSTRAINT PK_LOGINHIS PRIMARY KEY (UserID);


ALTER TABLE Cservice ADD CONSTRAINT FK_Adminstrator_TO_Cservice_1 FOREIGN KEY (AdminID)
REFERENCES Adminstrator (AdminID) on delete cascade;

ALTER TABLE Rfamily ADD CONSTRAINT FK_flightuser_TO_Rfamily_1 FOREIGN KEY (UserID)
REFERENCES flightuser (UserID) on delete cascade;

ALTER TABLE Notice ADD CONSTRAINT FK_Adminstrator_TO_Notice_1 FOREIGN KEY (AdminID)
REFERENCES Adminstrator (AdminID) on delete cascade;

ALTER TABLE L_rule ADD CONSTRAINT FK_R_section_TO_L_rule_1 FOREIGN KEY (ROUTE_SECTION)
REFERENCES R_section (ROUTE_SECTION) on delete cascade;

ALTER TABLE dfare ADD CONSTRAINT FK_Adminstrator_TO_dfare_1 FOREIGN KEY (AdminID)
REFERENCES Adminstrator (AdminID) on delete cascade;

ALTER TABLE Mtracking ADD CONSTRAINT FK_flightuser_TO_Mtracking_1 FOREIGN KEY (UserID)
REFERENCES flightuser (UserID) on delete cascade;

ALTER TABLE payrefund ADD CONSTRAINT FK_flightuser_TO_payrefund_1 FOREIGN KEY (UserID)
REFERENCES flightuser (UserID) on delete cascade;

ALTER TABLE payrefund ADD CONSTRAINT FK_Scplane_TO_payrefund_1 FOREIGN KEY (renum)
REFERENCES Scplane (renum) on delete cascade;

ALTER TABLE SEAT_NUM ADD CONSTRAINT FK_airplane_TO_SEAT_NUM_1 FOREIGN KEY (asnum)
REFERENCES airplane (asnum) on delete cascade;

ALTER TABLE Scplane ADD CONSTRAINT FK_airplane_TO_Scplane_1 FOREIGN KEY (asnum)
REFERENCES airplane (asnum) on delete cascade;

ALTER TABLE Bpass ADD CONSTRAINT FK_flightuser_TO_Bpass_1 FOREIGN KEY (UserID)
REFERENCES flightuser (UserID) on delete cascade;

ALTER TABLE yesno ADD CONSTRAINT FK_flightuser_TO_yesno_1 FOREIGN KEY (UserID)
REFERENCES flightuser (UserID) on delete cascade;

ALTER TABLE yesno ADD CONSTRAINT FK_Contract_TO_yesno_1 FOREIGN KEY (Contract_code)
REFERENCES Contract (Contract_code) on delete cascade;

ALTER TABLE Ifare ADD CONSTRAINT FK_Adminstrator_TO_Ifare_1 FOREIGN KEY (AdminID)
REFERENCES Adminstrator (AdminID) on delete cascade;

ALTER TABLE CARD_USE ADD CONSTRAINT FK_GIFTCARD_TO_CARD_USE_1 FOREIGN KEY (CARD_NUM)
REFERENCES GIFTCARD (CARD_NUM) on delete cascade;

ALTER TABLE Event ADD CONSTRAINT FK_Adminstrator_TO_Event_1 FOREIGN KEY (AdminID)
REFERENCES Adminstrator (AdminID) on delete cascade;

ALTER TABLE Winner ADD CONSTRAINT FK_flightuser_TO_Winner_1 FOREIGN KEY (UserID)
REFERENCES flightuser (UserID) on delete cascade;

ALTER TABLE Winner ADD CONSTRAINT FK_Event_TO_Winner_1 FOREIGN KEY (Evnum)
REFERENCES Event (Evnum) on delete cascade;

ALTER TABLE Prize ADD CONSTRAINT FK_Event_TO_Prize_1 FOREIGN KEY (Evnum)
REFERENCES Event (Evnum) on delete cascade;

ALTER TABLE Userdetail ADD CONSTRAINT FK_flightuser_TO_Userdetail_1 FOREIGN KEY (UserID) 
REFERENCES flightuser (UserID) on delete cascade;

--------------------------------------------------------------���� ������ ���Թ�---------------------------------------------------
--------------------------------------------------------------���� ������ ���Թ�---------------------------------------------------
--------------------------------------------------------------���� ������ ���Թ�---------------------------------------------------
--------------------------------------------------------------���� ������ ���Թ�---------------------------------------------------
--------------------------------------------------------------���� ������ ���Թ�---------------------------------------------------
--------------------------------------------------------------���� ������ ���Թ�---------------------------------------------------
--------------------------------------------------------------���� ������ ���Թ�---------------------------------------------------
--------------------------------------------------------------���� ������ ���Թ�---------------------------------------------------
-----
-- ȸ�� ���� 5��
INSERT INTO flightuser VALUES ('user001', 'ȫ', '�浿', 'Hong', 'GilDong', 'password123', TO_DATE('1990-01-01', 'YYYY-MM-DD'), 'Male', 'user001@example.com', '01012345678', 'Korea', '1234-5678-9012-3456');

INSERT INTO flightuser VALUES ('user002', '��', 'ö��', 'Kim', 'ChulSoo', 'pass456', TO_DATE('1985-12-15', 'YYYY-MM-DD'), 'Male', 'user002@example.com', '01023456789', 'Korea', '5678-9012-3456-7890');

INSERT INTO flightuser VALUES ('user003', '��', '����', 'Lee', 'YoungHee', 'securepass', TO_DATE('1993-05-20', 'YYYY-MM-DD'), 'Female', 'user003@example.com', '01034567890', 'Japan', '9012-3456-7890-1234');

INSERT INTO flightuser VALUES ('user004', '��', '�̿�', 'Park', 'MiYoung', 'mypassword', TO_DATE('1987-04-03', 'YYYY-MM-DD'), 'Female', 'user004@example.com', '01045678901', 'China', '2345-6789-0123-4567');

INSERT INTO flightuser VALUES ('user005', '��', '����', 'Kim', 'SuHyun', 'p@ssw0rd', TO_DATE('1990-11-11', 'YYYY-MM-DD'), 'Female', 'user005@example.com', '01056789012', 'Korea', '6789-0123-4567-8901');

--�װ��� ���� 5��
INSERT INTO airplane  VALUES (
    'HL7553',
    '�����װ�',
    276,
    'A330-300',
    TO_DATE('1999-04-16', 'YYYY-MM-DD'),
    0,
    24,
    252,
    '������Ƽ�� Ŭ���� �켱 ž��, �߰� ���Ϲ� ���',
    '���� �¼� ����, ���� �������θ�Ʈ �ý���',
    NULL
);



INSERT INTO airplane VALUES (
    'HL7554',
    '�����װ�',
    276,
    'A330-300',
    TO_DATE('1999-01-04', 'YYYY-MM-DD'),
    0,
    24,
    252,
    '������Ƽ�� Ŭ���� ���� üũ��, ����� �̿� ����',
    '���� ������ ��巹��Ʈ, USB ���� ��Ʈ',
    NULL
);

INSERT INTO airplane VALUES (
    'HL7611',
    '�����װ�',
    407,
    'A380-800',
    TO_DATE('2010-09-27', 'YYYY-MM-DD'),
    12,
    94,
    301,
    '������Ƽ�� Ŭ���� ���� üũ��, �켱 ž��',
    '���̵� ��ũ�� ���� �����, �ٸ� ���� Ȯ��'
    ,'�۽�ƮŬ���� �ְ��� ����'
);


INSERT INTO airplane VALUES (
    'HL8348',
    '�����װ�',
    146,
    'B737-8',
    TO_DATE('2019-04-18', 'YYYY-MM-DD'),
    0,
    8,
    138,
    '������Ƽ�� Ŭ���� ����Ʈ, ��� �Ļ� �ɼ�',
    '���� �������θ�Ʈ, �� ���� �¼� �� �ٸ� ����'
    ,NULL
);

INSERT INTO airplane VALUES (
    'HL8240',
    '�����װ�',
    138,
    'B737-800',
    TO_DATE('2011-09-14', 'YYYY-MM-DD'),
    0,
    12,
    126,
    '������Ƽ�� Ŭ���� ����Ʈ, ��� �Ļ� �ɼ�',
    '���� �������θ�Ʈ, �� ���� �¼� �� �ٸ� ����'
    ,NULL
);
-- ���� ���� 5��
delete scplane where 1=1;
INSERT INTO Scplane VALUES (1, NULL, TO_DATE('2024-03-20 09:30', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-03-20 10:45', 'YYYY-MM-DD HH24:MI'), 'Korea', 'Korea', 'admin001', 'KE1234', 'JEJU.CJU', 'SEOUL.GMP', 23, 2, 'HL7553');
INSERT INTO Scplane VALUES (2, NULL, TO_DATE('2024-03-23 15:15', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-03-23 16:30', 'YYYY-MM-DD HH24:MI'), 'Korea', 'Korea', 'admin002',  'KE5678',  'JEJU.CJU','SEOUL.GMP', 15, 3, 'HL7554');
INSERT INTO Scplane VALUES (3, '�ܹ���', TO_DATE('2024-04-09 14:45', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-04-09 20:00', 'YYYY-MM-DD HH24:MI'), 'Korea', 'Japan', 'admin003', 'KE9876', 'FUK.FUK','SEOUL.ICN', 8, 1, 'HL7611');
INSERT INTO Scplane VALUES (4, '��ġ�', TO_DATE('2024-04-10 09:05', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-04-10 10:25', 'YYYY-MM-DD HH24:MI'), 'Korea', 'China', 'admin004',  'KE4321', 'BEIJING.PEK', 'SEOUL.ICN', 12, 4, 'HL8348');
INSERT INTO Scplane VALUES (5, NULL, TO_DATE('2024-05-03 21:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-05-03 22:15', 'YYYY-MM-DD HH24:MI'), 'Korea', 'Korea', 'admin005', 'KE8765', 'JEJU.CJU', 'SEOUL.GMP', 20, 2, 'HL8240');



-- ������ 5���� ������
INSERT INTO Scplane VALUES 
(11, NULL, TO_DATE('2024-03-25 09:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-03-25 11:05', 'YYYY-MM-DD HH24:MI')
, 'Korea', 'Japan', 'admin001', 'KE2468', 'FUK.FUK', 'SEOUL.ICN', 18, 3, 'HL7553');
INSERT INTO Scplane VALUES 
(12, '������ũ', TO_DATE('2024-04-15 11:10', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-04-15 12:25', 'YYYY-MM-DD HH24:MI')
, 'Korea', 'CHINA', 'admin001', 'KE6543', 'BEIJING.PEK','SEOUL.ICN', 10, 1, 'HL8348');
--INSERT INTO Scplane VALUES 
--(13, NULL, TO_DATE('2024-05-01 16:30', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-05-01 17:40', 'YYYY-MM-DD HH24:MI')
--, 'Korea', 'Korea', 'admin001', 97000, 'KE7890', 'GMP', 'CJU', 25, 4, 'HL8197');
--INSERT INTO Scplane VALUES 
--(14, NULL, TO_DATE('2024-05-10 20:30', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-05-10 21:40', 'YYYY-MM-DD HH24:MI')
--, 'Korea', 'Korea', 'admin001', 132000, 'KE1227', 'GMP', 'CJU', 22, 2, 'HL6635');
--INSERT INTO Scplane VALUES 
--(15, NULL, TO_DATE('2024-05-20 13:20', 'YYYY-MM-DD HH24:MI'), TO_DATE('2024-05-20 14:30', 'YYYY-MM-DD HH24:MI')
--, 'Korea', 'Thailand', 'admin010', 101000, 'KE1115', 'GMP', 'CJU', 14, 3, 'HL5721');

--����/����/ȯ��
--INSERT INTO payrefund VALUES (1, '����', 'ī��', '����', '20A', SYSDATE, 2, 97000, 276, 'user001', 1 ,'a');
--INSERT INTO payrefund VALUES (2, '����', '����Ʈī��', '����', '21A', SYSDATE, 0, 115000, 150, 'user002', 2);
--INSERT INTO payrefund VALUES (3, '����', 'ī��', '����', '22A', SYSDATE, 1, 199000, 250, 'user003', 3);
--INSERT INTO payrefund VALUES (4, '����', '���ϸ���', '����', '20A', SYSDATE, 0, 169000, 398, 'user004', 4);
--INSERT INTO payrefund VALUES (5, '����', '����Ʈī��', '����', '20A', SYSDATE, 3, 63000, 276, 'user005', 5);

--
-- ������ 5���� ����
INSERT INTO Adminstrator VALUES ('#admin001', '��', 'ö��', 'Kim', 'Chulsoo', 'adminpass1', TO_DATE('1990-01-15', 'YYYY-MM-DD'), 'Male', 'chulsoo.kim@example.com', '010-1234-5678', 'Seoul, South Korea', '1234-5678-9012-3456');
INSERT INTO Adminstrator VALUES ('#admin002', '��', '����', 'Lee', 'Younghee', 'adminpass2', TO_DATE('1985-03-22', 'YYYY-MM-DD'), 'Female', 'younghee.lee@example.com', '010-9876-5432', 'Busan, South Korea', '7890-1234-5678-9012');
INSERT INTO Adminstrator VALUES ('#admin003', '��', '�μ�', 'Park', 'Minsu', 'adminpass3', TO_DATE('1995-07-10', 'YYYY-MM-DD'), 'Male', 'minsu.park@example.com', '010-5555-1234', 'Incheon, South Korea', '3456-7890-1234-5678');
INSERT INTO Adminstrator VALUES ('#admin004', '��', '����', 'Jang', 'Seoyoung', 'adminpass4', TO_DATE('1988-11-05', 'YYYY-MM-DD'), 'Female', 'seoyoung.jang@example.com', '010-7777-8888', 'Daejeon, South Korea', '9012-3456-7890-1234');
INSERT INTO Adminstrator VALUES ('#admin005', '��', '��ȣ', 'Yoon', 'Junho', 'adminpass5', TO_DATE('1992-04-30', 'YYYY-MM-DD'), 'Male', 'junho.yoon@example.com', '010-3333-9999', 'Ulsan, South Korea', '5678-9012-3456-7890');

--
--������ ���� �μ�Ʈ 3��
INSERT INTO dfare (Keynum, peak, discount, timezone, sg, route, fare, redis, AdminID, wknddy)
VALUES (1, '�����', '����', '��ȣ', '�Ϲݼ�', 'SEOUL/GMP-JEJU/CJU', 101000, 3000, '#admin001', '����');
INSERT INTO dfare (Keynum, peak, discount, timezone, sg, route, fare, redis, AdminID, wknddy)
VALUES (2, '�����', '����', '�Ϲ�', '�Ϲݼ�', 'SEOUL/GMP-JEJU/CJU', 97000 , 3000, '#admin001', '����');
INSERT INTO dfare (Keynum, peak, discount, timezone, sg, route, fare, redis, AdminID, wknddy)
VALUES (3, '�����', '����', '��ȣ', '�Ϲݼ�', 'SEOUL/GMP-JEJU/CJU', 115000, 3000, '#admin001', '�ָ�');
INSERT INTO dfare (Keynum, peak, discount, timezone, sg, route, fare, redis, AdminID, wknddy)
VALUES (4, '�����', '����', '�Ϲ�', '�Ϲݼ�', 'SEOUL/GMP-JEJU/CJU', 110000, 3000, '#admin001', '�ָ�');
INSERT INTO dfare (Keynum, peak, discount, timezone, sg, route, fare, redis, AdminID, wknddy)
VALUES (5, '������', '����', '������', '�Ϲݼ�', 'SEOUL/GMP-JEJU/CJU', 132000, 3000, '#admin001', '������');

INSERT INTO dfare (Keynum, peak, discount, timezone, sg, route, fare, redis, AdminID, wknddy)
VALUES (6, '�����', '����', '��ȣ', '������Ƽ����', 'SEOUL/GMP-JEJU/CJU', 161000, 3000, '#admin001', '����');
INSERT INTO dfare (Keynum, peak, discount, timezone, sg, route, fare, redis, AdminID, wknddy)
VALUES (7, '�����', '����', '�Ϲ�', '������Ƽ����', 'SEOUL/GMP-JEJU/CJU', 157000, 3000, '#admin001', '����');
INSERT INTO dfare (Keynum, peak, discount, timezone, sg, route, fare, redis, AdminID, wknddy)
VALUES (8, '�����', '����', '��ȣ', '������Ƽ����', 'SEOUL/GMP-JEJU/CJU', 175000, 3000, '#admin001', '�ָ�');
INSERT INTO dfare (Keynum, peak, discount, timezone, sg, route, fare, redis, AdminID, wknddy)
VALUES (9, '�����', '����', '�Ϲ�', '������Ƽ����', 'SEOUL/GMP-JEJU/CJU', 170000, 3000, '#admin001', '�ָ�');
INSERT INTO dfare (Keynum, peak, discount, timezone, sg, route, fare, redis, AdminID, wknddy)
VALUES (10, '������', '����', '������', '������Ƽ����', 'SEOUL/GMP-JEJU/CJU', 192000, 3000, '#admin001', '������');



--������ ���� �μ�Ʈ 2��
insert into ifare values (1,'ICN','FUK','�Ϲݼ�',150000,110000,20300,21000,'#admin003');
insert into ifare values (2,'ICN','PEK','�Ϲݼ�',235000,172300,22350,35000,'#admin004');
-������ ����

INSERT INTO Ifare (Keynum, starta, arrive, sg, fare, redis, tax, fuelch, AdminID)
VALUES (3, 'ICN', 'FUK', '�ϵ', 807600, 593500, 18450, 35000, '#admin001');
INSERT INTO Ifare (Keynum, starta, arrive, sg, fare, redis, tax, fuelch, AdminID)
VALUES (4, 'ICN', 'FUK', '������Ƽ����', 588850, 432000, 18450, 35000, '#admin001');
INSERT INTO Ifare (Keynum, starta, arrive, sg, fare, redis, tax, fuelch, AdminID)
VALUES (5, 'ICN', 'FUK', '�Ϲݼ�', 235000, 172300, 18450, 35000, '#admin001');

--exec mk_scplane_01  ('202404050800','202404050925','korea','JAPAN','#admin001','SEOUL.ICN','FUK.FUK');
--exec mk_scplane_01  ('202404051355','202404051525','korea','JAPAN','#admin001','SEOUL.ICN','FUK.FUK');
--exec mk_scplane_01  ('202404051835','202404052000','korea','JAPAN','#admin001','SEOUL.ICN','FUK.FUK');


INSERT INTO Ifare (Keynum, starta, arrive, sg, fare, redis, tax, fuelch, AdminID)
VALUES (7, 'ICN', 'PEK', '�ϵ', 667000, 489500,  22,350, 35000, '#admin001');
INSERT INTO Ifare (Keynum, starta, arrive, sg, fare, redis, tax, fuelch, AdminID)
VALUES (8, 'ICN', 'PEK', '������Ƽ����', 506000,  370800,  22350, 35000, '#admin001');
INSERT INTO Ifare (Keynum, starta, arrive, sg, fare, redis, tax, fuelch, AdminID)
VALUES (9, 'ICN', 'PEK', '�Ϲݼ�', 361500, 265200, 22350, 35000, '#admin001');

--exec mk_scplane_01  ('202404200815','202404200940','korea','CHINA','#admin001','SEOUL.ICN','BEIJING.PEK');
--exec mk_scplane_01  ('202404200905','202404201025','korea','CHINA','#admin002','SEOUL.ICN','BEIJING.PEK');
--exec mk_scplane_01  ('202404201840','202404202005','korea','CHINA','#admin002','SEOUL.ICN','BEIJING.PEK');



INSERT INTO Ifare (Keynum, starta, arrive, sg, fare, redis, tax, fuelch, AdminID)
VALUES (11, 'ICN', 'JFK', '�ϵ', 6412000,  4743000, 62300, 161000, '#admin001');
INSERT INTO Ifare (Keynum, starta, arrive, sg, fare, redis, tax, fuelch, AdminID)
VALUES (12, 'ICN', 'JFK', '������Ƽ����', 4511000, 3336000, 62300, 161000, '#admin001');
INSERT INTO Ifare (Keynum, starta, arrive, sg, fare, redis, tax, fuelch, AdminID)
VALUES (13, 'ICN', 'JFK', '�Ϲݼ�', 2384000, 1763000, 62300, 161000, '#admin001');

--exec mk_scplane_01  ('202404201000','202404210020','korea','USA','#admin002','SEOUL.ICN','NYC.JFK');
--exec mk_scplane_01  ('202404201930','202404210930','korea','USA','#admin002','SEOUL.ICN','NYC.JFK');


INSERT INTO Ifare (Keynum, starta, arrive, sg, fare, redis, tax, fuelch, AdminID)
VALUES (15, 'ICN', 'BOS', '�ϵ', 6412200, 4735028, 62300, 161000, '#admin001');
INSERT INTO Ifare (Keynum, starta, arrive, sg, fare, redis, tax, fuelch, AdminID)
VALUES (16, 'ICN', 'BOS', '������Ƽ����', 4511000, 3334140, 62300, 161000, '#admin001');
INSERT INTO Ifare (Keynum, starta, arrive, sg, fare, redis, tax, fuelch, AdminID)
VALUES (17, 'ICN', 'BOS', '�Ϲݼ�', 2384500, 1759230, 62300, 161000, '#admin001');

--exec mk_scplane_01  ('202405100930','202405102330','korea','USA','#admin002','SEOUL.ICN','BOS.BOS');
--exec mk_scplane_01  ('202405100920','202405110340','korea','USA','#admin002','SEOUL.ICN','BOS.BOS');

INSERT INTO Ifare (Keynum, starta, arrive, sg, fare, redis, tax, fuelch, AdminID)
VALUES (19, 'ICN', 'LAS', '�ϵ', 11033900, 4082543,  124600, 260400, '#admin001');
INSERT INTO Ifare (Keynum, starta, arrive, sg, fare, redis, tax, fuelch, AdminID)
VALUES (20, 'ICN', 'LAS', '������Ƽ����', 7755600, 2869572 , 124600, 260400, '#admin001');
INSERT INTO Ifare (Keynum, starta, arrive, sg, fare, redis, tax, fuelch, AdminID)
VALUES (21, 'ICN', 'LAS', '�Ϲݼ�', 3656100, 1352757, 124600, 260400, '#admin001');


-- �ȳ� ���� 5��
INSERT INTO notice VALUES ( 1, '�ѱ� �Ա� �����Ű� ���� ����', '2023�� 5�� 1�Ϻ��� ���ѹα� �Ա� �����Ű� ������ ����˴ϴ�. 
 �Ű��� ��ǰ�� ���� ��쿡�� ���� �Ű� ���� �鼼 ���� �̿��� �ּ���.
 �� �ʼ� �Ű� ǰ���� �ִ� ��쿡�� ���� �Ű� ���� (�˻� ���� �̿�) - �ʼ� �Ű� ǰ�� : ��ȭ 8��� �ʰ� ��ǰ, ��ȭ 1���� �ʰ� ��ȯ, �˿���ǰ ��
 �� �Ű� ��� : App/Web ���� �Ű� �Ǵ� ���� �޴�ǰ �Ű� �ۼ� 
 �� App ��ġ �� Web ���� ���', '��������', '#admin005');
INSERT INTO notice VALUES ( 2, '��ī���н� ȸ�� ���� ���� ����(Ű�ڴϾ� ����)', '��ī���н� ȸ�� ���޻��� Ű�ڴϾ� ������� ���� ������ ����˴ϴ�.
 �� ��ī���н� ȸ�� ���� ������ ���� ���� �ÿ��� ���� - ���ͳ� ���� ���� �� ���� ���� �Ұ�  
 �� ���ϱ� 2�� ������ 30%�� �λ� ( 2024�� 2�� 26�� ����) - ���ϱ� 1�� �������� 20% ����', '��ī���н�', '#admin001');
INSERT INTO notice VALUES ( 3, '������Ʈ �����н� ���� ���� (����ũ��)', '���޻� ���� ��ȹ�� ���� ����ũ������ ������Ʈ �����н� ���ް� ����˴ϴ�.
 �� ���޻� : ����ũ�� (SHAKE SHACK) ��õ�������� ��2�����͹̳� ��õ������
 �� ���� ������ : 2024�� 3�� 30�� �� ������Ʈ �����н� ���� ������ 3�� 29�� ���� �����˴ϴ�.', '��������', '#admin003');
INSERT INTO notice VALUES ( 4, 'ī�� ���� �Ͻ� �ߴ� (Diners Club, Discover)', 'Ȩ���������� �װ��� ���� �� Diners club �� Discover ī�� ������ �Ͻ� �ߴܵ� �����Դϴ�.
 �� �ߴ� ���� : 2024�� 3�� 16�� �� �� �ߴ� ���� : �ش� ī��� ��ȭ���� ���α׷� ���� 
 * �� �� Ŭ�ι� ī���(Visa, Mastercard, American Express, JCB, UATP)���� ������ �����ϸ� ī��� ��ȭ���� ���α׷� ���� �۾� �� �ٽ� ������ �����Դϴ�.(20204�� ��ݱ� ��)'
, '��Ÿ�ȳ�', '#admin001');
INSERT INTO notice VALUES ( 5, '�ű� ���ϸ��� ���� ����( ��������, 11����)', '�������� �� 11������ ���ϸ��� ���� ���޸� �����Ͽ�,
 �����װ� Ȩ������ �� ������ ��ũ�� ���� ���� �� ���� �ݾ׿� ���� ��ī���н� ���ϸ��� ������ �������� �˷��帳�ϴ�. 
 <���޳���> 
  �� �������� : ���� �ݾ� 1,000���� 2����  
  �� 11���� : ���� �ݾ� 1,000���� 1����'
, '���޼ҽ�', '#admin002');

--�¼� �Է�����

INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-01A', 'HL7553', '01A', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-01B', 'HL7553', '01B', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-01C', 'HL7553', '01C', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-02A', 'HL7553', '02A', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-02B', 'HL7553', '02B', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-02C', 'HL7553', '02C', '�ϵ');

-- �Ϲݼ� �¼� �߰�
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-20A', 'HL7553', '20A', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-20B', 'HL7553', '20B', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-20C', 'HL7553', '20C', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-21A', 'HL7553', '21A', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-21B', 'HL7553', '21B', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-21C', 'HL7553', '21C', '�Ϲݼ�');

-- ������Ƽ���� �¼� �߰�
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-10A', 'HL7553', '10A', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-10B', 'HL7553', '10B', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-10C', 'HL7553', '10C', '������Ƽ����');
--INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-10A', 'HL7553', '11A', '������Ƽ����');
--INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-10B', 'HL7553', '11B', '������Ƽ����');
--INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7553-10C', 'HL7553', '11C', '������Ƽ����');

-- �ϵ
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-01D', 'HL7554', '01D', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-01E', 'HL7554', '01E', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-01F', 'HL7554', '01F', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-02D', 'HL7554', '02D', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-02E', 'HL7554', '02E', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-02F', 'HL7554', '02F', '�ϵ');
-- �Ϲݼ�
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-21A', 'HL7554', '21A', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-21B', 'HL7554', '21B', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-21C', 'HL7554', '21C', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-22A', 'HL7554', '22A', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-22B', 'HL7554', '22B', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-22C', 'HL7554', '22C', '�Ϲݼ�');
-- ������Ƽ����
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-11A', 'HL7554', '11A', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-11B', 'HL7554', '11B', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-11C', 'HL7554', '11C', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-12A', 'HL7554', '12A', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-12B', 'HL7554', '12B', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7554-12C', 'HL7554', '12C', '������Ƽ����');

-- �ϵ
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-01G', 'HL7611', '01G', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-01H', 'HL7611', '01H', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-01I', 'HL7611', '01I', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-02G', 'HL7611', '02G', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-02H', 'HL7611', '02H', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-02I', 'HL7611', '02I', '�ϵ');

-- �Ϲݼ�
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-22A', 'HL7611', '22A', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-22B', 'HL7611', '22B', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-22C', 'HL7611', '22C', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-23A', 'HL7611', '23A', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-23B', 'HL7611', '23B', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-23C', 'HL7611', '23C', '�Ϲݼ�');
-- ������Ƽ����
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-12A', 'HL7611', '12A', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-12B', 'HL7611', '12B', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-12C', 'HL7611', '12C', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-13A', 'HL7611', '13A', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-13B', 'HL7611', '13B', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL7611-13C', 'HL7611', '13C', '������Ƽ����');

-- �ϵ �¼� �߰�
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-01A', 'HL8348', '01A', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-01B', 'HL8348', '01B', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-01C', 'HL8348', '01C', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-02A', 'HL8348', '02A', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-02B', 'HL8348', '02B', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-02C', 'HL8348', '02C', '�ϵ');
-- �Ϲݼ� �¼� �߰�
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-20A', 'HL8348', '20A', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-20B', 'HL8348', '20B', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-20C', 'HL8348', '20C', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-21A', 'HL8348', '21A', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-21B', 'HL8348', '21B', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-21C', 'HL8348', '21C', '�Ϲݼ�');
-- ������Ƽ���� �¼� �߰�
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-10A', 'HL8348', '10A', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-10B', 'HL8348', '10B', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-10C', 'HL8348', '10C', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-11A', 'HL8348', '11A', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-11B', 'HL8348', '11B', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8348-11C', 'HL8348', '11C', '������Ƽ����');


-- �ϵ �¼� �߰�
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-01A', 'HL8240', '01A', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-01B', 'HL8240', '01B', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-01C', 'HL8240', '01C', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-02A', 'HL8240', '02A', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-02B', 'HL8240', '02B', '�ϵ');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-02C', 'HL8240', '02C', '�ϵ');
-- �Ϲݼ� �¼� �߰�
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-20A', 'HL8240', '20A', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-20B', 'HL8240', '20B', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-20C', 'HL8240', '20C', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-21A', 'HL8240', '21A', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-21B', 'HL8240', '21B', '�Ϲݼ�');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-21C', 'HL8240', '21C', '�Ϲݼ�');
-- ������Ƽ���� �¼� �߰�
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-10A', 'HL8240', '10A', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-10B', 'HL8240', '10B', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-10C', 'HL8240', '10C', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-11A', 'HL8240', '11A', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-11B', 'HL8240', '11B', '������Ƽ����');
INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-11C', 'HL8240', '11C', '������Ƽ����');



---- �ϵ �¼� �߰�
--INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-01A', 'HL8240', '01A', '�ϵ');
--INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-01B', 'HL8240', '01B', '�ϵ');
--INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-01C', 'HL8240', '01C', '�ϵ');
--
---- �Ϲݼ� �¼� �߰�
--INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-20A', 'HL8240', '20A', '�Ϲݼ�');
--INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-20B', 'HL8240', '20B', '�Ϲݼ�');
--INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-20C', 'HL8240', '20C', '�Ϲݼ�');
--
---- ������Ƽ���� �¼� �߰�
--INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-10A', 'HL8240', '10A', '������Ƽ����');
--INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-10B', 'HL8240', '10B', '������Ƽ����');
--INSERT INTO SEAT_NUM (SEAT_CODE, asnum, SEAT_NUM, SEAT_GRADE) VALUES ('HL8240-10C', 'HL8240', '10C', '������Ƽ����');


-- Ŭ����ޱ��� �� �ֱ� 


INSERT INTO S_Grade (Key) VALUES (1); 
INSERT INTO S_Grade VALUES (2, '���į Ŭ��', 50000, 40 ) ;  
INSERT INTO S_Grade VALUES (3, '���į �����̾� Ŭ��' , 500000, 40);
INSERT INTO S_Grade VALUES (4, '�и��� ���Ϸ� Ŭ��', 1000000, 40); 

-- ���� ��û �ϱ� 


--INSERT INTO Rfamily (keynum,relation,family_id,userid) VALUES (1,'��','#id_01','user001');
--INSERT INTO Rfamily (keynum,relation,family_id,userid) VALUES (2,'��','#id_01','user002');
--INSERT INTO Rfamily (keynum,relation,family_id,userid) VALUES (3,'��','#id_02','user003');
--INSERT INTO Rfamily (keynum,relation,family_id,userid) VALUES (4,'��','#id_02','user004');
--INSERT INTO Rfamily (keynum,relation,family_id,userid) VALUES (5,'��','#id_02','user005');

---- ȸ�� ���� ���� 
--INSERT INTO Userdetail (UserID) VALUES ('user001');
--INSERT INTO Userdetail (UserID) VALUES ('user002');
--INSERT INTO Userdetail (UserID) VALUES ('user003');
--INSERT INTO Userdetail (UserID) VALUES ('user004');
--INSERT INTO Userdetail (UserID) VALUES ('user005');


-- ���ϸ��� ���� / �Һ�
--    
--INSERT INTO Mtracking (Tracking_num, Amount_Mileage, airline_type, spendorearned, userID) VALUES(1,0,'�����װ�','����','user001');
--INSERT INTO Mtracking (Tracking_num, Amount_Mileage, airline_type, spendorearned, userID) VALUES(2,0,'�����װ�','�Һ�','user001');
--INSERT INTO Mtracking (Tracking_num, Amount_Mileage, airline_type, spendorearned, userID) VALUES(3,20,'�����װ�','����','user002');
--INSERT INTO Mtracking (Tracking_num, Amount_Mileage, airline_type, spendorearned, userID) VALUES(4,30,'�����װ�','�Һ�','user002');
--INSERT INTO Mtracking (Tracking_num, Amount_Mileage, airline_type, spendorearned, userID) VALUES(5,40,'�����װ�','����','user003');
--

-- ���� ����
-- ù ��° �� ����
INSERT INTO Customerc VALUES (
    1,                -- ���ǻ��װ�����ȣ
    'Ī��',                        -- ����
    '���׼���',                  -- �о�
    '��',                         -- �°� ��
    '����',                       -- �°� �̸�
    '(82) 10-1234-5678',          -- ��ȭ��ȣ
    'example@email.com',          -- �̸����ּ�
    'Ī���ؿ� ~',                  -- ����
    '��� �ʹ� ģ���մϴ�',          -- ����
    '1232-3456-7890-1323',                       -- ��ī���н�ȸ����ȣ
    '34534534',                     -- �����ȣ
    1,                            -- �̸��ϼ��ſ���
    '����',                        -- ��������
    '����',                        -- ��ߵ���
    TO_DATE('2024-03-10', 'YYYY-MM-DD'), -- �������
    'KE123'                       -- �װ����
);

-- �� ��° �� ����
INSERT INTO Customerc VALUES (
    2,                -- ���ǻ��װ�����ȣ
    '����',                        -- ����
    '�⳻��',                      -- �о�
    '��',                         -- �°� ��
    '����',                       -- �°� �̸�
    '(82) 10-2345-6789',          -- ��ȭ��ȣ
    'user2@example.com',          -- �̸����ּ�
    '�⳻�� ���� ����',            -- ����
    '�⳻�� �ɼ��� �����ΰ���?',   -- ����
    '9012-3678-7890-1323',                       -- ��ī���н�ȸ����ȣ
    '12346786',                     -- �����ȣ
    0,                            -- �̸��ϼ��ſ���
    '����',                        -- ��������
    '����',                        -- ��ߵ���
    TO_DATE('2024-04-15', 'YYYY-MM-DD'), -- �������
    'KE456'                       -- �װ����
);

-- �� ��° �� ����
INSERT INTO Customerc VALUES (
   3,                -- ���ǻ��װ�����ȣ
    '�Ҹ�',                        -- ����
    '��ȭ��',                      -- �о�
    '��',                         -- �°� ��
    '�μ�',                       -- �°� �̸�
    '(82) 10-3456-7890',          -- ��ȭ��ȣ
    'user3@example.com',          -- �̸����ּ�
    '��ȭ�� �нǿ� ���� �Ҹ�',      -- ����
    '���� ���� ���߽��ϴ�',        -- ����
    '9012-3456-2340-1323',                       -- ��ī���н�ȸ����ȣ
    '54367344',                     -- �����ȣ
    1,                            -- �̸��ϼ��ſ���
    '����',                        -- ��������
    '����',                        -- ��ߵ���
    TO_DATE('2024-05-20', 'YYYY-MM-DD'), -- �������
    'KE789'                       -- �װ����
);

-- �� ��° �� ����
INSERT INTO Customerc VALUES (
    4,                -- ���ǻ��װ�����ȣ
    '����',                        -- ����
    '��Ÿ',                        -- �о�
    '��',                         -- �°� ��
    '����',                       -- �°� �̸�
    '(82) 10-4567-8901',          -- ��ȭ��ȣ
    'user4@example.com',          -- �̸����ּ�
    '�⳻ ���� ���� ����',        -- ����
    '�⳻ �������θ�Ʈ�� �������ּ���', -- ����
    '9012-3456-7890-1323',                       -- ��ī���н�ȸ����ȣ
    '21346578',                     -- �����ȣ
    0,                            -- �̸��ϼ��ſ���
    '�ν���������',                -- ��������
    '����',                        -- ��ߵ���
    TO_DATE('2024-06-01', 'YYYY-MM-DD'), -- �������
    'KE890'                       -- �װ����
);

INSERT INTO Customerc VALUES (
   5,                -- ���ǻ��װ�����ȣ
    '�Ҹ�',                        -- ����
    '�⳻��',                      -- �о�
    '��',                         -- �°� ��
    '����',                       -- �°� �̸�
    '(82) 10-2345-6789',          -- ��ȭ��ȣ
    'user5@example.com',          -- �̸����ּ�
    '�⳻�� ǰ�� ���� ��û',         -- ����
    '�⳻���� ���� ���� ��뿡 �� ���ƽ��ϴ�.', -- ����
    '1234-5678-9012-3456',        -- ��ī���н�ȸ����ȣ
    '87654321',                   -- �����ȣ
    1,                            -- �̸��ϼ��ſ���
    '����',                        -- ��������
    '����',                        -- ��ߵ���
    TO_DATE('2024-09-15', 'YYYY-MM-DD'), -- �������
    'KE453'                       -- �װ����
);

--�Ļ�޴�

-- ù ��° �Ļ� �ɼ� �߰�
INSERT INTO flight_meal (meal_code, menu) VALUES (1, 'ġŲ ī�� ���̽� - ��ȭ�� ��ŷ�� �Բ� �����Ǵ� ǳ�� ������ ġŲ ī��');

-- �� ��° �Ļ� �ɼ� �߰�
INSERT INTO flight_meal (meal_code, menu) VALUES (2, '��� ����� - ä�������ڸ� ���� Ư�� �غ�� �ż��� ��ä�� ��� ���� �Ļ�');

-- �� ��° �Ļ� �ɼ� �߰�
INSERT INTO flight_meal (meal_code, menu) VALUES (3, '������ũ�� ���� - ��޽����� ������ũ�� �Բ� �����Ǵ� ���� ����');



---
--����Ʈī�� 50���� 1�� ����

---
INSERT INTO GIFTCARD (
    CARD_NUM, 
    message, 
    PIN_NUM, 
    Recipient, 
    Recipient_PNUM, 
    SENDER, 
    SENDER_PNUM, 
    amount
) VALUES (
    '1234-5678-9012-3456',       -- ī�� ��ȣ
    '�����մϴ�!',               -- �޽���
    123456,                      -- PIN ��ȣ
    'ȫ�浿',                    -- ������
    '010-1234-5678',             -- ������ ��ȭ��ȣ
    '��ö��',                    -- �߼���
    '010-8765-4321',             -- �߼��� ��ȭ��ȣ
    500000                       -- �ݾ� (50����)
);

-- ���� ���̺� 3��

INSERT INTO r_section VALUES ( '������', 'ICN,GMP,CJU,KWJ,TAE,RSU,USN,HIN,CJJ,KPO'
                              , 'ICN,GMP,PUS,CJU,KWJ,TAE,RSU,USN,HIN,CJJ,KPO');
INSERT INTO r_section VALUES ( '������ ����', 'ICN,GMP,PUS,CJU,KWJ,TAE,RSU,USN,HIN,CJJ,KPO'
                              , 'NYC,JFK,DFW,DTW,LAS,LAX,MSP,YVR,BOS,SFO,SEA,CHI,ATL,WAS,YYZ,HNL');   
INSERT INTO r_section VALUES ( '������ ���Ͼƽþ�', 'ICN,GMP,PUS,CJU,KWJ,TAE,RSU,USN,HIN,CJJ,KPO'
                             ,'KOJ,KHH,KMQ,CAN,KKJ,NGO,NKG,KIJ,DLC,TYO,MFM,PEK,CTS,SHA,XMN,SHE,SZX,XIY,AOJ,YNJ,YNT,KIX,OIT,OKA,URC,WUH,WEH,DYG,CGO,TNA,CSX,TAO,KMG,TPE,RMQ,TSN,HGH,HFE,HKG,TXN,FUK');
--��ȭ�� ����

INSERT INTO l_rule VALUES ( 1, '�Ϲݼ�', 1, 0 , '������ ���Ͼƽþ�' );
INSERT INTO l_rule VALUES ( 2, '�Ϲݼ�', 2, 70000 , '������ ���Ͼƽþ�' );
INSERT INTO l_rule VALUES ( 3, '�Ϲݼ�', 3, 170000 , '������ ���Ͼƽþ�' );
INSERT INTO l_rule VALUES ( 4, '������Ƽ����', 1, 0 , '������ ���Ͼƽþ�' );
INSERT INTO l_rule VALUES ( 5, '������Ƽ����', 2, 0 , '������ ���Ͼƽþ�' );
INSERT INTO l_rule VALUES ( 6, '������Ƽ����', 3, 100000 , '������ ���Ͼƽþ�' );
INSERT INTO l_rule VALUES ( 7, '�ϵ', 1, 0 , '������ ���Ͼƽþ�' );
INSERT INTO l_rule VALUES ( 8, '�ϵ', 2, 0 , '������ ���Ͼƽþ�' );
INSERT INTO l_rule VALUES ( 9, '�ϵ', 3, 0 , '������ ���Ͼƽþ�' );
INSERT INTO l_rule VALUES ( 10, '�ϵ', 4, 100000 , '������ ���Ͼƽþ�' );

INSERT INTO l_rule VALUES ( 11, '�Ϲݼ�', 1, 0 , '������ ����' );
INSERT INTO l_rule VALUES ( 12, '�Ϲݼ�', 2, 0 , '������ ����' );
INSERT INTO l_rule VALUES ( 13, '�Ϲݼ�', 3, 200000 , '������ ����' );
INSERT INTO l_rule VALUES ( 14, '������Ƽ����', 1, 0 , '������ ����' );
INSERT INTO l_rule VALUES ( 15, '������Ƽ����', 2, 0 , '������ ����' );
INSERT INTO l_rule VALUES ( 16, '������Ƽ����', 3, 200000 , '������ ����' );
INSERT INTO l_rule VALUES ( 17, '�ϵ', 1, 0 , '������ ����' );
INSERT INTO l_rule VALUES ( 18, '�ϵ', 2, 0 , '������ ����' );
INSERT INTO l_rule VALUES ( 19, '�ϵ', 3, 0 , '������ ����' );
INSERT INTO l_rule VALUES ( 20, '�ϵ', 4, 200000 , '������ ����' );

--����� ����
INSERT INTO lounge_info (lounge_num, lounge_name, destination_airport, country, location, operating_time, operator, entry_passenger, service)
VALUES ( 1,'KAL �ϵ �����', '����/��õ', '���ѹα�','(�� 2���� �͹̳�,�ⱹ�ɻ� ��)248 Gate ������ ����(4F)', '�� ���� : ����
 �� �ð� : 04:00 ~ 22:00 ', '����', '�ϵ �°�' ,'����, ����, ������, �ڷ�����, �ѽ�, ���� ���ͳ�, ��Ʈ�� ��Ʈ, ������, ȸ�ǽ�, �����ü�, �ַ�');
INSERT INTO lounge_info (lounge_num, lounge_name, destination_airport, country, location, operating_time, operator, entry_passenger, service)
VALUES ( 2,'KAL �����(������)', '����/����', '���ѹα�','���ѹα�, �ⱹ�� �� 4��(���� �˻� �� �ⱹ�ɻ� ��)', '�� ���� : ����
 �� �ð� : 06:20 ~ 20:05 �� ����� � �ð��� �װ��� ���� �����ٿ� ���� ������ �� �ֽ��ϴ�.', '����', '�� ������Ƽ�� Ŭ���� �°� �� �����װ� �и��� ���Ϸ� Ŭ�� �°�
 �� �����װ� ���į �����̾� Ŭ�� �°� �� ��ī���� ����Ʈ �÷��� �°� �� �����װ� ���į Ŭ�� �°� (����� �¼� ��Ȳ�� ���� ���� ����)' 
 ,'����, ����, ������, �ڷ�����, �ѽ�, ���� ���ͳ�, ��Ʈ�� ��Ʈ, ������, �ַ�');
INSERT INTO lounge_info (lounge_num, lounge_name, destination_airport, country, location, operating_time, operator, entry_passenger, service)
VALUES ( 3,'KAL �����', '����/����Ÿ', '���Ͼƽþ�','��1 �͹̳� �ⱹ�ɻ� �� 26�� GATE ��ó�� ��ġ', '�� ���� : ����
 �� �ð� : 07:15 ~ 20:30 �� ���� ���� �ð� : ���� �ð� 20����', '����', '�� �ϵ �°� �� ������Ƽ�� Ŭ���� �°� �� �����װ� �и��� ���Ϸ� Ŭ�� �°� �� �����װ� ���į �����̾� Ŭ�� �°�
 �� ��ī���� ����Ʈ �÷��� �°� �� �����װ� ���į Ŭ�� �°� (����� �¼� ��Ȳ�� ���� ���� ����)' ,'����, ����, �ڷ�����, ���� ���ͳ�, �ַ�');
INSERT INTO lounge_info (lounge_num, lounge_name, destination_airport, country, location, operating_time, operator, entry_passenger, service)
VALUES ( 4,'�߱������װ� �����', '����¡/�����(PEK)', '���Ͼƽþ�','�͹̳�2,���Ȱ˻����� ��� �� �鼼����','<�� ���� : ȭ, ��, ��
 �� �ð� : 07:40 ~ 10:40> <�� ���� : ��, ��, ��, �� �� �ð� : 07:50 ~ 10:50> <�� ���� : ���� �� �ð� : 08:45 ~ 11:45> <�� ���� : ��, ��, ��, �� �� �ð� : 11:15 ~ 14:15>
 <�� ���� : ��, ��, ��, �� �� �ð� : 15:55 ~ 18:55> <�� ���� : ���� �� �ð� : 18:55 ~ 21:45>', '����', '�� �ϵ �°� �� ������Ƽ�� Ŭ���� �°� �� �����װ� �и��� ���Ϸ� Ŭ�� �°�
 �� �����װ� ���į �����̾� Ŭ�� �°� �� ��ī���� ����Ʈ �÷��� �°�' ,'����, ����, ������, �ڷ�����, ���� ���ͳ�, ��Ʈ�� ��Ʈ, ������, �ַ�');
INSERT INTO lounge_info (lounge_num, lounge_name, destination_airport, country, location, operating_time, operator, entry_passenger, service)
VALUES ( 5,'36�� �����װ� �����', '������/Ǫ��(PVG)', '���Ͼƽþ�','���Ȱ˻����� ����� �鼼����','�� ���� : ���� �� �ð� : 05:00 ~ 23:59', '����'
 , '�� �ϵ �°� �� ������Ƽ�� Ŭ���� �°� �� �����װ� �и��� ���Ϸ� Ŭ�� �°� �� �����װ� ���į �����̾� Ŭ�� �°� �� ��ī���� ����Ʈ �÷��� �°�' 
 ,'����, ����, ������, �ڷ�����, ��ȭ, �ѽ�, ��ǻ��(���ͳ� ����), ���� ���ͳ�, ������, �����, �����ü�, �ַ�');
INSERT INTO lounge_info (lounge_num, lounge_name, destination_airport, country, location, operating_time, operator, entry_passenger, service)
VALUES ( 6,'��ȭ�װ� �����', 'Ÿ�̺���/Ÿ������(TPE)', '���Ͼƽþ�','��1 �����͹̳�, �ⱹ�� 3�� �����˻� ��� �� �ⱹ�翭 �� ������"A" ������ 4���� ��ġ'
 ,'�� ���� : ���� �� �ð� : 05:30 ~ 23:30', '����', '�� �ϵ �°� �� ������Ƽ�� Ŭ���� �°� �� �����װ� �и��� ���Ϸ� Ŭ�� �°� �� �����װ� ���į �����̾� Ŭ�� �°�
 �� ��ī���� ����Ʈ �÷��� �°�' ,'����, ����, ������, �ڷ�����, �ѽ�, ��ǻ��(���ͳ� ����), ���� ���ͳ�, ��Ʈ�� ��Ʈ, �����, �����ü�, �ַ�');
INSERT INTO lounge_info (lounge_num, lounge_name, destination_airport, country, location, operating_time, operator, entry_passenger, service)
VALUES ( 7,'�ö��� �����̾� �����', 'ȫ��(HKG)', '���Ͼƽþ�','1�� ž�±� �α�','�� ���� : ���� �� �ð� : 06:00 ~ 01:00 �� ����� ��� �ð� : �ִ� 3�ð�'
, '����', '�� �ϵ �°� �� ������Ƽ�� Ŭ���� �°� �� �����װ� �и��� ���Ϸ� Ŭ�� �°� �� �����װ� ���į �����̾� Ŭ�� �°�
 �� ��ī���� ����Ʈ �÷��� �°�' ,'����, ����, �ڷ�����, ��ȭ');
INSERT INTO lounge_info (lounge_num, lounge_name, destination_airport, country, location, operating_time, operator, entry_passenger, service)
VALUES ( 8,'��ī���� �����', '�����(YVR)', '����','������ û�� ž�±� D54 ��ó�� ��ġ','�� ���� : ���� �� �ð� : 07:30 ~ 02:00
 �� �߰������� ���� ������Ʈ ���� ��� http://www.skyteam.com/en/lounges/Vancouver ����', '����', '�� ������Ƽ�� Ŭ���� �°� �� �����װ� �и��� ���Ϸ� Ŭ�� �°�
 �� �����װ� ���į �����̾� Ŭ�� �°� �� ��ī���� ����Ʈ �÷��� �°� ���ַ� �������� ���� 19�� �̻� ���� ����( ��, ���� �����ڿʹ� ���� ����)' 
 ,'����, ����, �ѽ�, ���� ���ͳ�, ��Ʈ�� ��Ʈ, ������, �����, �����ü�, �ַ�');

--���� ���� 5��

INSERT INTO cservice VALUES ('82', '�ѱ�', '���ѹα�', '1588-2001', '02-2656-2001', '[������] 
�ѱ���/���� : ���� 07:00-19:00 
[������] 
�ѱ��� : ���� 07:00-22:00 
���� : ���� 24�ð� 
�Ϻ��� : ���� 09:00-19:00(�Ϻ� �����ð� ����) 
�߱��� : ���� 08:00-19:00(�߱� �����ð� ����)','#admin002');
INSERT INTO cservice VALUES ('81', '���Ͼƽþ�', '�Ϻ�', '0570-05-2001', '06-6648-8201', '�ѱ���/���� : ���� 24�ð� 
�Ϻ��� : ���� 09:00-19:00 
�߱��� : ���� 08:00-19:00(�߱� �����ð� ����)','#admin002');
INSERT INTO cservice (cs_num, area, country_name, cs_call1,lang_time, adminid) VALUES ('852', '���Ͼƽþ�', 'ȫ��', '2366-2001', '�ѱ���/���� : ���� 24�ð� 
�Ϻ��� : ���� 09:00-19:00(�Ϻ� �����ð� ����) 
�߱���(����ȭ) : ���� 08:00-19:00(�߱� �����ð� ����)','#admin003');
INSERT INTO cservice (cs_num, area, country_name, cs_call1,lang_time, adminid) VALUES ('61', '�����/��', 'ȣ��', '02-9262-6000', '�ѱ���/���� : ���� 24�ð� 
�Ϻ��� : ���� 09:00-19:00(�Ϻ� �����ð� ����) 
�߱��� : ���� 08:00-19:00(�߱� �����ð� ����)','#admin003');
INSERT INTO cservice VALUES ('7', '���þ�/�߾Ӿƽþ�', '���þ�', '(��ũ��)8-800-500-2510(����)', '(���𺸽���ũ)8-4232-433-444', '�ѱ���/���� : ���� 24�ð� 
�Ϻ��� : ���� 09:00-19:00(�Ϻ� �����ð� ����) 
�߱��� : ���� 08:00-19:00(�߱� �����ð� ����) 
* ������ ���� ����
������� ������ ��ð��� ���� ���� ���� �ð��� �ٸ��ϴ�.','#admin002');

-- ���
INSERT INTO Contract (Contract_code, Essentiality, Contract_title, Contract_contents)
VALUES (1, '�ʼ�', '�̿���', '��1�� ��Ģ ��1�� (����) �� ����� �ߴ����װ�(���� "�����װ�"�̶� �մϴ�)�� ��ϴ� �����װ� �¶��� �÷������� �����ϴ� �¶��� ����(���� "����"�� �մϴ�)�� �̿��Կ� �־� �����װ��� �̿����� �Ǹ��� �� �ǹ� �� å�ӻ����� �������� �������� �մϴ�.');
INSERT INTO Contract (Contract_code, Essentiality, Contract_title, Contract_contents)
VALUES (2, '�ʼ�', '�������� ���� �� �̿� ����', 'ȸ���� �������� ���� �� �̿뿡 ���� ���� ����');
INSERT INTO Contract (Contract_code, Essentiality, Contract_title, Contract_contents)
VALUES (3, '����', '�������� ��3�� ���� ����', 'ȸ���� ����������ȣ�� ���� �̿��� ���� ����');
INSERT INTO Contract (Contract_code, Essentiality, Contract_title, Contract_contents)
VALUES (4, '����', '������ ���� Ȱ�� �� ���� ����', '������ ���� Ȱ�� ����
�����װ��� ���� ����(�̺�Ʈ, ����) ������ ���� �޴���ȭ ��ȣ, �̸��� �ּ�, ���� ������(����, ����), ȸ������(ȸ���, �μ���, ����)�� �����մϴ�.');
INSERT INTO Contract (Contract_code, Essentiality, Contract_title, Contract_contents)
VALUES (5, '����', '��������', '�������');
INSERT INTO Contract (Contract_code, Essentiality, Contract_title, Contract_contents)
VALUES (6, '����', '���θ�� ����', '�������');
INSERT INTO Contract (Contract_code, Essentiality, Contract_title, Contract_contents)
VALUES (7, '����', '�̸���', '�������');
INSERT INTO Contract (Contract_code, Essentiality, Contract_title, Contract_contents)
VALUES (8, '����', 'SMS', '�������');


-- ��� ���� ����
INSERT INTO yesno (Contrat_num, agree, Agree_date, UserID, Contract_code)
VALUES ('1', '����', TO_DATE('2024.03.08', 'YYYY.MM.DD'), 'user001', 1);
INSERT INTO yesno (Contrat_num, agree, Agree_date, UserID, Contract_code)
VALUES ('2', '����', TO_DATE('2024.03.08', 'YYYY.MM.DD'), 'user001', 2);
INSERT INTO yesno (Contrat_num, agree, Agree_date, UserID, Contract_code)
VALUES ('3', '����', TO_DATE('2024.03.08', 'YYYY.MM.DD'), 'user001', 3);
INSERT INTO yesno (Contrat_num, agree, Agree_date, UserID, Contract_code)
VALUES ('4', '����', TO_DATE('2024.03.08', 'YYYY.MM.DD'), 'user001', 4);
INSERT INTO yesno (Contrat_num, agree, Agree_date, UserID, Contract_code)
VALUES ('5', '����', TO_DATE('2024.03.08', 'YYYY.MM.DD'), 'user001', 5);
INSERT INTO yesno (Contrat_num, agree, Agree_date, UserID, Contract_code)
VALUES ('6', '����', TO_DATE('2024.03.08', 'YYYY.MM.DD'), 'user001', 6);
INSERT INTO yesno (Contrat_num, agree, Agree_date, UserID, Contract_code)
VALUES ('7', '����', TO_DATE('2024.03.08', 'YYYY.MM.DD'), 'user001', 7);
INSERT INTO yesno (Contrat_num, agree, Agree_date, UserID, Contract_code)
VALUES ('8', '����', TO_DATE('2024.03.08', 'YYYY.MM.DD'), 'user001', 8);

--����Ʈ ī�� ��� ����

--INSERT INTO CARD_USE VALUES (1,'���',TO_DATE('2024-03-07','YYYY-MM-DD'),500000,'1234-5678-9012-3456');



-------��� ���� �� �̸� �������ϴ� ����,�������� ----------------------------------------------------------------------------
-------��� ���� �� �̸� �������ϴ� ���� ----------------------------------------------------------------------------
-------��� ���� �� �̸� �������ϴ� ���� ----------------------------------------------------------------------------
-------��� ���� �� �̸� �������ϴ� ���� ----------------------------------------------------------------------------
-------��� ���� �� �̸� �������ϴ� ���� ----------------------------------------------------------------------------
-------��� ���� �� �̸� �������ϴ� ���� ----------------------------------------------------------------------------
drop sequence yesnoseq;
drop sequence mk_mtrackingseq;
drop sequence mk_giftcardseq;
-- ����� ����
create sequence yesnoseq
start with 1 increment by 1 nomaxvalue nocycle;
create sequence mk_mtrackingseq
start with 1 increment by 1 nomaxvalue nocycle;
create sequence mk_giftcardseq
start with 1 increment by 1 nomaxvalue nocycle;



------------------------------------Ʈ���� ��� --------------------------------------------
------------------------------------Ʈ���� ��� --------------------------------------------
------------------------------------Ʈ���� ��� ---------------------------------------------
------------------------------------Ʈ���� ��� ----------------------------------------------
------------------------------------Ʈ���� ��� ---------------------------------------------
-- ���� ���� �� ������Ʈ �� 
create or replace trigger tr_mk_payrefund_01
AFTER insert on payrefund
for each row
declare 
    vnum1 number;
    vnum2 number;
begin
     select count(tracking_num)+1 into vnum1 from mtracking;
     select count(record_num)+1 into vnum2 from card_use;
     if :new.pmethod ='���ϸ���' then
     insert into mtracking values(vnum1 , sysdate, :new.mileage,'�����װ�','�Һ�','user001');
     elsif :new.pmethod ='ī��' then 
     insert into mtracking values(vnum1 , sysdate, :new.mileage, '�����װ�','����','user001');
     elsif :new.pmethod = '����Ʈī��' then
     insert into card_use values ( vnum2,'���' ,sysdate, :new.cost, :new.giftcardnumber);
     end if;
end;


-------------- ȸ�����Խ� userdetail ���̺� �߰� Ʈ���� �ʿ�

 create or replace trigger tr_mk_flightuser_01 
 after insert on flightuser
 for each row
 begin
        insert into userdetail(userid) values (:new.userid);

 end;
 
 -------------���� (payrefund ) ȯ�ҽ� ���ϸ��� Ȥ�� ����Ʈī�� �������� ȯ���߰�---
  create or replace trigger tr_mk_payrefund_01 
  after delete on payrefund 
  for each row 
  declare 
    vnum1 number;
    vnum2 number;
  begin 
     select count(tracking_num)+1 into vnum1 from mtracking;
     select count(record_num)+1 into vnum2 from card_use;
     if :old.pmethod ='���ϸ���' then
     insert into mtracking values ( vnum1 ,sysdate , :old.mileage ,'�����װ�' , 'ȯ��', :old.userid);
     elsif :old.pmethod = 'ī��' then 
     insert into mtracking values( vnum1 , sysdate, :old.mileage, '�����װ�','ȯ��',:old.userid);
     elsif :old.pmethod = '����Ʈī��' then
     insert into card_use values ( vnum2,'ȯ��' ,sysdate, :old.cost, :old.giftcardnumber);
     end if;
        end;
--  select * from mtracking;
--  select * from payrefund;

--------------------------------------���� Ʈ���� -----------
CREATE OR REPLACE TRIGGER se_lrule_04
BEFORE
INSERT ON payrefund
FOR EACH ROW
DECLARE
 vgrade l_rule.seat_grade%TYPE;
 vnum NUMBER;
 vfee l_rule.excess_fee%TYPE;
 vsection r_section.route_section%TYPE;
 vaairport scplane.aairport%TYPE;
 vasnum seat_num.asnum%TYPE;
 vcost payrefund.cost%TYPE;
 vdate scplane.ddate%TYPE;
BEGIN
 IF :NEW.payrefund = 'ȯ��' THEN
 DBMS_OUTPUT.PUT_LINE(' ');
 ELSE
 SELECT ddate INTO vdate
 FROM scplane
 WHERE renum = :NEW.renum;

 SELECT asnum INTO vasnum
 FROM scplane
 WHERE renum = :NEW.renum;

 SELECT seat_grade INTO vgrade
 FROM seat_num 
 WHERE seat_num = :NEW.seatnumber AND asnum = vasnum;
 
 vnum := :NEW.nluggage;
 
 SELECT aairport INTO vaairport
 FROM scplane 
 WHERE renum = :NEW.renum;
 
 WITH a AS(
 SELECT route_section,
 REGEXP_SUBSTR(aairport , '[^,]+' , 1 , b.lv )AS airport
 FROM r_section,(SELECT LEVEL AS lv FROM dual CONNECT BY LEVEL <= 50) b
 )
 SELECT route_section INTO vsection
 FROM a
 WHERE airport = SUBSTR(vaairport,-3);
 IF vsection LIKE '%������%' THEN
 SELECT excess_fee INTO vfee
 FROM l_rule
 WHERE seat_grade = vgrade AND numberofluggage = vnum AND route_section = vsection;
 ELSE
  vfee := 0;
 END IF;
 
 vcost := :NEW.cost + vfee; 

 UPDATE payrefund
 SET cost = :NEW.cost + vfee
 WHERE serialnumber = :NEW.serialnumber;
 DBMS_OUTPUT.PUT_LINE('-------------------------------------------------------');
 DBMS_OUTPUT.PUT_LINE('    '||TO_CHAR(vdate, 'MM/DD')||' '||TO_CHAR(vdate, 'HH24:MI')||'�� ����ϴ� '||vaairport ||'�� ����� �¼�'|| :NEW.seatnumber);
 DBMS_OUTPUT.PUT_LINE('  ���Ӱ����� '||:NEW.cost ||'�̰�, ��Ź���Ϲ� �ʰ� ����� ' || vfee|| '�Դϴ�. ' );
 DBMS_OUTPUT.PUT_LINE('      ���������� '||:NEW.pmethod||'�� ���� ���� �ݾ��� ' || vcost ||'�Դϴ�!');
 DBMS_OUTPUT.PUT_LINE(' ');
 DBMS_OUTPUT.PUT_LINE(' ');
 DBMS_OUTPUT.PUT_LINE('                  ��(����Ϸ�)��');
 DBMS_OUTPUT.PUT_LINE('           ������ ���� ���� �غ��� ����~!');
 DBMS_OUTPUT.PUT_LINE(' ');
 DBMS_OUTPUT.PUT_LINE(' ');
 DBMS_OUTPUT.PUT_LINE('-------------------------------------------------------');
 DBMS_OUTPUT.PUT_LINE('�ֹ��ݾ�                                   '||vcost||'��');
 DBMS_OUTPUT.PUT_LINE('-------------------------------------------------------');
 DBMS_OUTPUT.PUT_LINE('�Ѱ����ݾ�                                 '||vcost||'��');
 DBMS_OUTPUT.PUT_LINE('-------------------------------------------------------');
 DBMS_OUTPUT.PUT_LINE(' ');
 DBMS_OUTPUT.PUT_LINE('������üũ�� �Ϸ� ����                               ');
 END IF;
END;
---- ��� ���� -----------------------------------------------------------------------------------------------------
---- ��� ���� -----------------------------------------------------------------------------------------------------
---- ��� ���� -----------------------------------------------------------------------------------------------------
---- ��� ���� -----------------------------------------------------------------------------------------------------
---- ��� ���� -----------------------------------------------------------------------------------------------------
---- ��� ���� -----------------------------------------------------------------------------------------------------

-----------------------------���� --------------------------------------------------
-----------------------------���� --------------------------------------------------
-----------------------------���� --------------------------------------------------
-----------------------------���� --------------------------------------------------
-----------------------------���� --------------------------------------------------
-----------------------------���� --------------------------------------------------
-----------------------------���� --------------------------------------------------
-----------------------------���� --------------------------------------------------
-----------------------------���� --------------------------------------------------

-- ���� ���� ���ν��� 
create or replace procedure mk_scplane_01 
(
    pddate varchar2,
    padate varchar2,
    pdnation scplane.dnation%type default 'Korea',
    panation scplane.anation%type,
    padmin scplane.adminid%type,
    pdairport scplane.dairport%type,
    paairport scplane.aairport%type
    
)
is
    vnumber varchar2(100);
    vasnum varchar2(100);
    vddate date;
    vadate date;
    vdnation varchar2(100);
    vanation varchar2(100);
    vfood varchar2(100) default '(�⳻�� ��������)';
begin
    vanation := upper(panation); 
    if vanation !='KOREA' then
    select substr(menu,1,instr(menu,'-')-1) into vfood from  (select menu from flight_meal order by dbms_random.value ) where rownum=1;
    end if ;
    vddate :=to_date(pddate,'yyyy.mm.dd hh24:mi');
    vadate :=to_date(padate,'yyyy.mm.dd hh24:mi');
    select asnum into vasnum from  (select asnum from airplane order by dbms_random.value ) where rownum=1 ;
    select NVL(max(renum)+1,1) INTO vnumber  from scplane ;
    insert into scplane values (vnumber ,vfood, vddate,vadate ,upper(pdnation),upper(panation),padmin, substr(initcap(pAnation),1,1) ||upper(dbms_random.string('A',1))||to_char(round(dbms_random.value(1000,9999))),paairport,pdairport,dbms_random.value(1,30),dbms_random.value(1,6),vasnum);
end;





--ȸ������ ���ν���
create or replace procedure mk_flightuser_01 
(
    UI flightuser.userid%type,
    kl flightuser.Korlastname%type ,
    kf flightuser.Korfirstname%type ,
    lne flightuser.lastname%type,
    fn flightuser.firstname%type ,
    pw flightuser.password%type ,
    bd  flightuser.birthdate%type ,
    gd flightuser.gender%type ,
    ea1 flightuser.emailaddress%type ,
    pn flightuser.phoneNumber%type  ,
    at1 flightuser.Anation%type,
    spn flightuser.Skypassnumber%type,
    ct1 contract.contract_code%type,
    ct2 contract.contract_code%type
)
is
  vui flightuser.userid%type;
begin
    if ct1<>12 then 
        raise_application_error(-20003,' �ʼ� ��� �̵��� ȸ������ ���� �Ұ�');
     end if;
      select userid into vui from flightuser where userid=ui ;
     if ui=vui then
        raise_application_error(-20002,' ����Id �ߺ� ����');
    end if;
    exception 
        when no_data_found then
       insert into flightuser values ( ui,kl,kf,lne,fn,pw,bd,gd,ea1,pn,at1,spn);
       insert into yesno values ( yesnoseq.nextval,'����',to_char(sysdate,'yyyy-mm-dd'),ui,1);
       insert into yesno values ( yesnoseq.nextval,'����',to_char(sysdate,'yyyy-mm-dd'),ui,2);
       insert into yesno values ( yesnoseq.nextval,decode(instr(ct2,'3'),0,'�ź�','����'),to_char(sysdate,'yyyy-mm-dd'),ui,3);
       insert into yesno values ( yesnoseq.nextval,decode(instr(ct2,'4'),0,'�ź�','����'),to_char(sysdate,'yyyy-mm-dd'),ui,4);
       insert into yesno values ( yesnoseq.nextval,decode(instr(ct2,'5'),0,'�ź�','����'),to_char(sysdate,'yyyy-mm-dd'),ui,5);
        dbms_output.put_line('ȸ�����Կ� �����Ͽ����ϴ�.');
end;

--ȸ�� Ż�� ���ν���
create or replace procedure mk_flightuser_02
 (
    UI flightuser.userid%type,
    ppw flightuser.password%type
 )
 is 
     vUI flightuser.userid%type;
    vppw flightuser.password%type;
 begin
    select userid into vui from flightuser where userid=ui;
    select password into vppw from flightuser where userid=vui and ppw= password ;
    delete flightuser
   where userid=ui;
    dbms_output.put_line('ȸ��Ż�� �����Ͽ����ϴ�..');
    exception
    when no_data_found then
        dbms_output.put_line('�ش��ϴ� ȸ���� �����ϴ�.');
    when others then
        dbms_output.put_line('ȸ�� ������ �����߽��ϴ�.');
 end;

 --�α��� ���ν���
 --select * from payrefund;
 create or replace procedure mk_flightuser_03
 (
   ui flightuser.userid%type ,
   pw flightuser.password%type
 )
 is
     vui flightuser.userid%type;
    vpw flightuser.password%type;
 begin
        select  password into vpw from flightuser where userid=ui;
        if vpw != pw then
        raise_application_error(-20006,'��й�ȣ�� ��ġ���� �ʽ��ϴ�.');
        end if;
        
       
        insert into loginhis values(ui,to_char(sysdate, 'yyyy"��" mm"��" dd"��" hh24"��" mi"��" ss"��"'));
         dbms_output.put_line('�α��ο� �����Ͽ����ϴ�');
        exception
            when no_data_found then 
            raise_application_error(-20007,'���̵� �������� �ʽ��ϴ�.');
             when others then
             raise_application_error(-20015,'�̹� �α��� �Ǿ��ֽ��ϴ�.');
end;



exec mk_flightuser_03('user001','password123');
--�α׾ƿ� ���ν��� -- 
create or replace procedure mk_loginhis_01
is
begin
    delete loginhis where 1=1;
    dbms_output.put_line('�α׾ƿ� �Ͽ����ϴ�');
end;



set serveroutput on;

--���� ���� ���� ��ȸ ���ν��� (������)
--create or replace procedure mk_scplane_01
--(
--    dap scplane.dairport%type,
--    aap scplane.aairport%type,
--    dd scplane.ddate%type,
--    anum number,
--    sgrade seat_num.seat_grade%type
--)
--is
--    vexfee number;
-- cursor vreserv is
-- select to_char(s.ddate,'yy/mm/dd hh24:mi') ��߽ð�, to_char(s.adate,'yy/mm/dd hh24:mi') �����ð�, 
-- to_char(to_number(to_char(s.adate , 'hh24')) -to_number(to_char(s.ddate , 'hh24')) )||'�ð�' || to_char(to_number(to_char(s.adate , 'mi')) -to_number(to_char(s.ddate , 'mi'))) || '��' �ҿ�ð�,
-- substr(dairport,instr(dairport,'.')+1) ��߰���,
-- substr(aairport,instr(aairport,'.')+1) ��������,
-- a.FCLA_COUNT -(select count(p.renum) from scplane s,airplane a ,payrefund p,seat_num sn where s.asnum=a.asnum and s.renum=p.renum and sn.asnum=s.asnum and sn.seat_num=p.seatnumber and substr(s.dairport,1,instr(s.dairport,'.')-1)=dap and substr(s.aairport,1,instr(s.aairport,'.')-1)=aap and to_char(s.ddate,'yymmdd')=dd and sn.seat_grade='�ϵ'
--) �����ϵ�� ,
--a.PreCLA_COUNT -(select count(p.renum)   from scplane s,airplane a ,payrefund p,seat_num sn where s.asnum=a.asnum and s.renum=p.renum and sn.asnum=s.asnum and sn.seat_num=p.seatnumber and substr(s.dairport,1,instr(s.dairport,'.')-1)=dap and substr(s.aairport,1,instr(s.aairport,'.')-1)=aap and to_char(s.ddate,'yymmdd')=dd and sn.seat_grade='������Ƽ����'
--) ����������Ƽ������ , 
--a.NCLA_COUNT -(select count(p.renum)  from scplane s,airplane a ,payrefund p,seat_num sn where s.asnum=a.asnum and s.renum=p.renum and sn.asnum=s.asnum and sn.seat_num=p.seatnumber and substr(s.dairport,1,instr(s.dairport,'.')-1)=dap and substr(s.aairport,1,instr(s.aairport,'.')-1)=aap and to_char(s.ddate,'yymmdd')=dd and sn.seat_grade='�Ϲݼ�'
--) �����Ϲݼ���, 
-- d.fare ������� from scplane s,airplane a , dfare d 
--where s.asnum=a.asnum 
--and substr(s.dairport,1,instr(s.dairport,'.')-1)=dap and substr(s.aairport,1,instr(s.aairport,'.')-1)=aap  and sgrade = d.sg 
--and to_char(s.ddate,'yymmdd')=dd and d.peak = CASE
--        WHEN to_char(s.ddate, 'yymmdd') = to_date('240101','yymmdd') THEN '������'
--        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_date('240208','yymmdd') AND to_date('240213','yymmdd') THEN '������'
--        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_date('240224','yymmdd') AND to_date('240302','yymmdd') THEN '������'
--        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_date('240503','yymmdd') AND to_date('240506','yymmdd') THEN '������'
--        WHEN to_char(s.ddate, 'yymmdd') = to_date('240515','yymmdd') THEN '������'
--        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_Date('240606','yymmdd') AND to_date('240608','yymmdd') THEN '������'
--        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_Date('240727','yymmdd') AND to_date('240824','yymmdd') THEN '������'
--        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_Date('240913','yymmdd')AND to_Date('240919','yymmdd') THEN '������'
--        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_Date('241003','yymmdd') AND to_Date('241005','yymmdd') THEN '������'
--        WHEN to_char(s.ddate, 'yymmdd') = to_Date('241009','yymmdd') THEN '������'
--        WHEN to_char(s.ddate, 'yymmdd') = to_Date('241225','yymmdd') THEN '������'
--        WHEN to_char(s.ddate, 'yymmdd') = to_Date('241231','yymmdd') THEN '������'
--        else '�����'
--        end
--    and d.discount = '����' and d.sg=sgrade and substr(d.route,1,instr(d.route,'/')-1)=dap and substr(d.route,instr(d.route,'-')+1,instr(d.route,'/',-1)-instr(d.route,'-')-1)=aap and 
--      d.timezone = case when to_char( s.ddate , 'hh24mi') >= '1500' then '�Ϲ�' else '��ȣ' end  and d.wknddy  = case to_char(s.ddate , 'dy') when '��' then '����' when 'ȭ' then '����' when '��' then '����' when '��' then '����' else '�ָ�' end;
--   rec vreserv%ROWTYPE;
--
--begin
--     open vreserv;
--       FETCH vreserv INTO rec;
--     if vreserv%notfound then
--        raise no_data_found ;
--        close vreserv;
--        end if;
--          close vreserv;
--        for rec in vreserv loop 
--            dbms_output.put_line('��߽ð� :'|| rec.��߽ð� || ' �����ð� : ' ||rec.�����ð� || ' ��߰��� :'|| rec.��߰��� ||' �������� :'||rec.�������� || ' �ҿ�ð� : '|| rec.�ҿ�ð� ||' ���� ���� : ' ||rec.������� ||'��'||'���� ���� : ' || round(rec.�������*0.85,-2) ||'��'||' Ư�� ���� : ' ||round(rec.�������*0.55,-2)||'��' );
--      
--       
--           
--        
--    
--              end loop;
--            
--        
--        exception 
--            when no_data_found then
--            dbms_output.put_line('�ش��ϴ� ���� ������ ������ �����ϴ�.');
--            when others then
--            dbms_output.put_line('�Է� �����Դϴ�.');
--end;
--------------------------------------------------------------------------------

create or replace procedure mk_scplane_02
(
  
    dap scplane.dairport%type,
    aap scplane.aairport%type,
    dd scplane.ddate%type,
    anum number,
    sgrade seat_num.seat_grade%type
  
    )
is 
    cursor vreserv is
 select to_char(s.ddate,'yy/mm/dd hh24:mi') ��߽ð�, to_char(s.adate,'yy/mm/dd hh24:mi') �����ð�, 
 to_char(ABS(to_number(-to_char(s.adate , 'hh24')) +to_number(to_char(s.ddate , 'hh24')) + (to_number(to_char(s.adate , 'DD')) -to_number(to_char(s.ddate , 'DD')))*24 ))||'�ð�' || to_char(ABS(to_number(to_char(s.adate , 'mi')) -to_number(to_char(s.ddate , 'mi')))) || '��' �ҿ�ð�,
 substr(dairport,instr(dairport,'.')+1) ��߰���,
 substr(aairport,instr(aairport,'.')+1) ��������,
 a.FCLA_COUNT -(select count(p.renum) from scplane s,airplane a ,payrefund p,seat_num sn where s.asnum=a.asnum and s.renum=p.renum and sn.asnum=s.asnum and sn.seat_num=p.seatnumber and substr(s.dairport,1,instr(s.dairport,'.')-1)=dap and substr(s.aairport,1,instr(s.aairport,'.')-1)=aap and to_char(s.ddate,'yymmdd')=dd and sn.seat_grade='�ϵ'
) �����ϵ�� ,
a.PreCLA_COUNT -(select count(p.renum)   from scplane s,airplane a ,payrefund p,seat_num sn where s.asnum=a.asnum and s.renum=p.renum and sn.asnum=s.asnum and sn.seat_num=p.seatnumber and substr(s.dairport,1,instr(s.dairport,'.')-1)=dap and substr(s.aairport,1,instr(s.aairport,'.')-1)=aap and to_char(s.ddate,'yymmdd')=dd and sn.seat_grade='������Ƽ����'
) ����������Ƽ������ , 
a.NCLA_COUNT -(select count(p.renum)  from scplane s,airplane a ,payrefund p,seat_num sn where s.asnum=a.asnum and s.renum=p.renum and sn.asnum=s.asnum and sn.seat_num=p.seatnumber and substr(s.dairport,1,instr(s.dairport,'.')-1)=dap and substr(s.aairport,1,instr(s.aairport,'.')-1)=aap and to_char(s.ddate,'yymmdd')=dd and sn.seat_grade='�Ϲݼ�'
) �����Ϲݼ���, 
 d.fare ������� from scplane s,airplane a , dfare d 
where s.asnum=a.asnum 

and substr(s.dairport,1,instr(s.dairport,'.')-1)=dap and substr(s.aairport,1,instr(s.aairport,'.')-1)=aap  and sgrade = d.sg 
and to_char(s.ddate,'yymmdd')=dd and d.peak = CASE
        WHEN to_char(s.ddate, 'yymmdd') = to_date('240101','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_date('240208','yymmdd') AND to_date('240213','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_date('240224','yymmdd') AND to_date('240302','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_date('240503','yymmdd') AND to_date('240506','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') = to_date('240515','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_Date('240606','yymmdd') AND to_date('240608','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_Date('240727','yymmdd') AND to_date('240824','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_Date('240913','yymmdd')AND to_Date('240919','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_Date('241003','yymmdd') AND to_Date('241005','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') = to_Date('241009','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') = to_Date('241225','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') = to_Date('241231','yymmdd') THEN '������'
        else '�����'
        end
    and d.discount = '����'  and 
      d.timezone = case when to_char( s.ddate , 'hh24mi') >= '1500' then '�Ϲ�' else '��ȣ' end  and d.wknddy  = case to_char(s.ddate , 'dy') when '��' then '����' when 'ȭ' then '����' when '��' then '����' when '��' then '����' else '�ָ�' end;
      
      cursor vreserv2 is
      select to_char(s.ddate,'yy/mm/dd hh24:mi') ��߽ð�, to_char(s.adate,'yy/mm/dd hh24:mi') �����ð�, 
 to_char(ABS(to_number(-to_char(s.adate , 'hh24')) +to_number(to_char(s.ddate , 'hh24')) + (to_number(to_char(s.adate , 'DD')) -to_number(to_char(s.ddate , 'DD')))*24 ))||'�ð�' ||ABS( to_char(to_number(to_char(s.adate , 'mi')) -to_number(to_char(s.ddate , 'mi')))) || '��' �ҿ�ð�,
 substr(dairport,instr(dairport,'.')+1) ��߰���,
 substr(aairport,instr(aairport,'.')+1) ��������,
 a.FCLA_COUNT -(select count(p.renum) from scplane s,airplane a ,payrefund p,seat_num sn where s.asnum=a.asnum and s.renum=p.renum and sn.asnum=s.asnum and sn.seat_num=p.seatnumber and substr(s.dairport,1,instr(s.dairport,'.')-1)=dap and substr(s.aairport,1,instr(s.aairport,'.')-1)=aap and to_char(s.ddate,'yymmdd')=dd and sn.seat_grade='�ϵ'
) �����ϵ�� ,
a.PreCLA_COUNT -(select count(p.renum)   from scplane s,airplane a ,payrefund p,seat_num sn where s.asnum=a.asnum and s.renum=p.renum and sn.asnum=s.asnum and sn.seat_num=p.seatnumber and substr(s.dairport,1,instr(s.dairport,'.')-1)=dap and substr(s.aairport,1,instr(s.aairport,'.')-1)=aap and to_char(s.ddate,'yymmdd')=dd and sn.seat_grade='������Ƽ����'
) ����������Ƽ������ , 
a.NCLA_COUNT -(select count(p.renum)  from scplane s,airplane a ,payrefund p,seat_num sn where s.asnum=a.asnum and s.renum=p.renum and sn.asnum=s.asnum and sn.seat_num=p.seatnumber and substr(s.dairport,1,instr(s.dairport,'.')-1)=dap and substr(s.aairport,1,instr(s.aairport,'.')-1)=aap and to_char(s.ddate,'yymmdd')=dd and sn.seat_grade='�Ϲݼ�'
) �����Ϲݼ���,i.fare ������� from scplane s,airplane a , ifare i 
where s.asnum=a.asnum and substr(s.dairport,1,instr(s.dairport,'.')-1)=dap and substr(s.aairport,1,instr(s.aairport,'.')-1)=aap   and sgrade = i.sg and to_char(s.ddate,'yymmdd')=dd AND I.ARRIVE = substr(s.aairport,instr(s.aairport,'.')+1);
     rec vreserv%ROWTYPE;
     rec2 vreserv2%ROWTYPE;
    EF NUMBER ;
    EF2 VARCHAR2(100) ;
begin

    if aap in ( 'SEOUL','JEJU','INCHEON') THEN 
         open vreserv;
       FETCH vreserv INTO rec;
     if vreserv%notfound then
        raise no_data_found ;
        close vreserv;
        end if;
          close vreserv;
        for rec in vreserv loop 
            
           
            dbms_output.put_line('��߽ð� :'|| rec.��߽ð� || ' �����ð� : ' ||rec.�����ð� || ' ��߰��� :'|| rec.��߰��� ||' �������� :'||rec.�������� || ' �ҿ�ð� : '|| rec.�ҿ�ð� ||' ���� ���� : ' ||rec.������� ||'��'||'���� ���� : ' || round(rec.�������*0.85,-2) ||'��'||' Ư�� ���� : ' ||round(rec.�������*0.55,-2)||'��' );
        
         end loop;
                dbms_output.put_line('                     �����ȭ�� ������ 1�� �Դϴ�. 
                �߰� ��ȭ���� ����üũ�ν� �ʰ����� 1KG �� 2000���� �߰������ �߻��մϴ�!');
       
         else
         open vreserv2;
       FETCH vreserv2 INTO rec2;
       if vreserv2%notfound then
        raise no_data_found ;
        close vreserv2;
        end if;
          close vreserv2;
        for rec2 in vreserv2 loop 
            
            
            dbms_output.put_line('��߽ð� :'|| rec2.��߽ð� || ' �����ð� : ' ||rec2.�����ð� || ' ��߰��� :'|| rec2.��߰��� ||' �������� :'||rec2.�������� || ' �ҿ�ð� : '|| rec2.�ҿ�ð� ||' ���� ���� : ' ||rec2.������� ||'��'||'���� ���� : ' || round(rec2.�������*0.85,-2) ||'��'||' Ư�� ���� : ' ||round(rec2.�������*0.55,-2)||'��' );
            
        end loop;
            for rec in (select NUMBEROFLUGGAGE , EXCESS_fEE  from l_rule where seat_grade = sgrade and route_section = case when aap in ('BEIJING','FUK') then '������ ���Ͼƽþ�' else '������ ����' end)  loop
            ef := rec.numberofluggage ;
            ef2 := rec.excess_fee ;
            dbms_output.put_line( '                    ��ȭ�� ���� : ' || ef ||'�� ��' || '�߰��ݾ� : '|| ef2 || '��');
                
        end loop;
        end if ;
         
        exception 
            when no_data_found then
            dbms_output.put_line('�ش��ϴ� ���� ������ ������ �����ϴ�.');
            when others then
            dbms_output.put_line('�Է� �����Դϴ�.');
    
end;
















--------------------------------------------------------------------------------

--
--���� (���� ) ��� 
drop sequence mk_payrefundseq;
create or replace procedure mk_payrefund_01
(
    pddate varchar2,
    pdairport scplane.dairport%type,
    paairport scplane.aairport%type,
    pseatnum payrefund.seatnumber%type default null,
    pnum number,
    pflight payrefund.flight%type,
    ppmethod payrefund.pmethod%type,
    pnluggage payrefund.nluggage%type,
    PCARDNUM PAYrefund.giftcardnumber%type default null,
    PPIN_NUMBER giftcard.pin_num%TYPE default null
)
is
    vrenum scplane.renum%type;
    vcost payrefund.cost%type;
    vpnum payrefund.seatnumber%type;
    vpnum2 payrefund.seatnumber%type;
    occupfiederror exception; 
    nocard exception; 
    nocardamount exception; 
    nomile exception; 
    vamount number;
    cardnumc payrefund.giftcardnumber%type;
    vmile number;
    vuserid varchar2(100);
    vpaynum number;
begin
     select count(serialnumber)+1 into vpaynum from payrefund;
     select userid into vuserid from loginhis ;
     select  count(seatnumber)  into vpnum from payrefund p ,scplane s where p.renum = (select renum from scplane s where to_char(s.ddate ,'YYMMDDhh24mi') =pddate) and pseatnum=p.seatnumber and p.payrefund = '����' ;
        select count(seatnumber)  into vpnum2 from payrefund p ,scplane s where p.renum = (select renum from scplane s where to_char(s.ddate ,'YYMMDDhh24mi') =pddate) and pseatnum=p.seatnumber and p.payrefund = 'ȯ��';
       if  vpnum-vpnum2 !=0 then
         raise occupfiederror;
         end if;
        
     select renum  into vrenum from scplane s where to_char(s.ddate ,'YYMMDDhh24mi') =pddate
    and substr(s.dairport,instr(s.dairport,'.')+1) = pdairport and  substr(s.aairport,instr(s.aairport,'.')+1) = paairport ;
   if  paairport in ('CJU','ICN','GMP') then 
   select d.fare ������� into vcost from scplane s,dfare d ,seat_num sn
where s.renum=vrenum and d.peak = CASE 
        WHEN to_char(s.ddate, 'yymmdd') = to_date('240101','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_date('240208','yymmdd') AND to_date('240213','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_date('240224','yymmdd') AND to_date('240302','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_date('240503','yymmdd') AND to_date('240506','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') = to_date('240515','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_Date('240606','yymmdd') AND to_date('240608','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_Date('240727','yymmdd') AND to_date('240824','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_Date('240913','yymmdd')AND to_Date('240919','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_Date('241003','yymmdd') AND to_Date('241005','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') = to_Date('241009','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') = to_Date('241225','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') = to_Date('241231','yymmdd') THEN '������'
        else '�����'
        end
    and d.sg= sn.seat_grade and s.asnum=sn.asnum and sn.seat_num = pseatnum and
    d.discount = '����' and substr(d.route,instr(d.route,'/')+1,instr(d.route,'-')-instr(d.route,'/')-1)=pdairport and substr(d.route,instr(d.route,'/',-1)+1)=paairport and 
      d.timezone = case when to_char( s.ddate , 'hh24mi') >= '1500' then '�Ϲ�' else '��ȣ' end  and d.wknddy  = case to_char(s.ddate , 'dy') when '��' then '����' when 'ȭ' then '����' when '��' then '����' when '��' then '����' else '�ָ�' end;
     ELSE
       SELECT  i.fare ������� INTO VCOST from scplane s , ifare i ,SEAT_NUM SN
       where s.asnum=sn.asnum and substr(s.dairport,instr(s.dairport,'.')+1)=PDAIRPORT and substr(s.aairport,instr(s.aairport,'.')+1)=PAAIRPORT   and  i.sg =SN.SEAT_GRADE  AND SN.SEAT_NUM = PSEATNUM  and to_char(s.ddate,'yymmddHH24MI')=pddate AND I.ARRIVE = substr(s.aairport,instr(s.aairport,'.')+1);
     END IF;
     
      if ppmethod = '����Ʈī��' then

        select count(card_num) into cardnumc from giftcard g where g.card_num = pcardnum and g.pin_num=PPIN_NUMBER ;
         if  cardnumc !=1  then
         raise  nocard ;
         else  select amount into vamount from giftcard where card_num = pcardnum; 
         end if;
         end if;
      
        if vamount <vcost then 
        raise nocardamount ;
        end if;
  
      
        vcost := (case when pflight = '����' then vcost*0.85 when pflight = 'Ư��' then vcost *0.55 else vcost end);
          if ppmethod = '���ϸ���' then
            select totalmile into vmile from userdetail where userid = vuserid;
            if vmile<vcost then 
                raise nomile;
                end if;
                end if;
       
      insert into payrefund  values
      (vpaynum, '����', ppmethod , pflight, pseatnum ,sysdate , pnluggage ,round(vcost,-2), round(vcost*0.005,-1) ,vuserid, vrenum, pcardnum ,PPIN_NUMBER);
       dbms_output.put_line('������ �Ϸ�Ǿ����ϴ�.');
     
     exception
        when no_data_found then
        dbms_output.put_line('������ �����Ͽ����ϴ�.');
        when occupfiederror then
         dbms_output.put_line('�ش� �¼��� �̹� ����Ǿ��ֽ��ϴ�.');
          when nocard then
         dbms_output.put_line('�Է��Ͻ� ����Ʈī�尡 �����ϴ�.');
         when nocardamount then
          dbms_output.put_line('����Ʈī�� �ܾ��� �����մϴ�.');
          when nomile then
          dbms_output.put_line('���ϸ��� �ܾ��� �����մϴ�.');
          
end;
--------------------------------------------------------
select * from seat_num;
select * from scplane;
    

---------------------------�α����� ������ ���� ���� ��ȸ--------------
create or replace procedure mk_payrefund_04

is
    vuserid flightuser.userid%type;
    cursor cpayrefund is 
    select p.pmethod , p.flight ,p.seatnumber ,p.drdate ,p.nluggage , p.cost,s.ddate ,s.adate ,s.dairport, s.aairport from payrefund p ,scplane s where p.userid = ( select userid  from loginhis ) and s.renum = p.renum  AND p.payrefund = '����' and not exists( select 1 from payrefund pr where pr.payrefund = 'ȯ��' AND pr.userid = (SELECT userid FROM loginhis) AND pr.drdate = p.drdate )  ;
    rec cpayrefund%rowtype;
    vnumber number :=0;
    
begin
        vnumber := vnumber +1;
        select userid into vuserid from loginhis;
        dbms_output.put_line( vuserid ||'ȸ������ ���� �����Դϴ�');
       for rec in cpayrefund loop
            dbms_output.put_line( vnumber|| '�� ���� ' ||' �������� : ' || rec.pmethod ||' ����,����,Ư������ : ' || rec.flight || ' ��߰��� :' || rec.dairport ||' �������� : ' || rec.aairport ||' �������� :' || to_char(rec.drdate , 'yyyy"��" mm"��" dd"��" hh24"��" mi"��" ss"��" ' ) || ' �����ݾ� :' || rec.cost||'��' );
         
       end loop;
end;


----------------------------����(ȯ��) ---------------------
create or replace procedure mk_payrefund_03
(
    pnumber number
)
is
  cursor vrefund is 
  select * from payrefund where userid = (select userid from loginhis)and rownum = pnumber;
  v_row vrefund%ROWTYPE;
  v_number number;
BEGIN
    select max(serialnumber)+1 into v_number from payrefund;
    OPEN vrefund;
    FETCH vrefund INTO v_row;
    insert into payrefund values ( v_number,'ȯ��', v_row.pmethod,v_row.flight,v_row.seatnumber,v_row.drdate,v_row.nluggage , v_row.cost,v_row.mileage,v_row.userid,v_row.renum,v_row.giftcardnumber,v_row.pin_num);
    dbms_output.put_line('ȯ���� �Ϸ�Ǿ����ϴ�');
    CLOSE vrefund;
end;






----------------------------���� --------------------------------------------------
-----------------------------���� --------------------------------------------------
-----------------------------���� --------------------------------------------------
-----------------------------���� --------------------------------------------------
-----------------------------���� --------------------------------------------------
-----------------------------���� --------------------------------------------------
-----------------------------���� --------------------------------------------------
-----------------------------���� --------------------------------------------------
-----------------------------���� --------------------------------------------------
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------

---------------------------------------���� ���ν��� ---------------------------------
---------------------------------------���� ���ν��� ---------------------------------
---------------------------------------���� ���ν��� ---------------------------------
---------------------------------------���� ���ν��� ---------------------------------
---------------------------------------���� ���ν��� ---------------------------------
---------------------------------------���� ���ν��� ---------------------------------

--<<<<< ����üũ�� , ž�±� �߱�>>>>>
CREATE OR REPLACE PROCEDURE se_payrefund_01
(
 pserialnum payrefund.serialnumber%TYPE,
 pddate scplane.ddate%TYPE,
 plastname flightuser.lastname%TYPE,
 pfirstname flightuser.firstname%TYPE
)
IS
 EXISTS_NUM VARCHAR2(10);
 vserialnum payrefund.serialnumber%TYPE;
 vdairport scplane.dairport%TYPE;
 vaairport scplane.aairport%TYPE;
 vddate scplane.ddate%TYPE;
 vseatnumber payrefund.seatnumber%TYPE;
 vlastname flightuser.lastname%TYPE;
 vfirstname flightuser.firstname%TYPE;
 vgate scplane.gate%TYPE;
 vterminal scplane.terminal%TYPE;
 vuserid flightuser.userid%TYPE;
 vnum bpass.key%TYPE;
 vname VARCHAR2(200);
 vnumber scplane.asnum%TYPE;
BEGIN
 SELECT serialnumber, s.dairport, s.aairport, s.ddate, p.seatnumber, f.lastname, f.firstname, s.gate, terminal, f.userid, s.asnum
  INTO vserialnum, vdairport, vaairport, vddate, vseatnumber, vlastname, vfirstname, vgate, vterminal, vuserid, vnumber
 FROM flightuser f JOIN payrefund p ON f.userid = p.userid
                   JOIN scplane s ON p.renum = s.renum 
 WHERE serialnumber = pserialnum AND s.ddate = pddate AND
      f.lastname = plastname AND f.firstname = pfirstname;
 
 vnum := 'b'||vserialnum;
 vname:= vlastname||vfirstname;
 
 SELECT CASE WHEN EXISTS 
  (SELECT serialnumber FROM flightuser f JOIN payrefund p ON f.userid = p.userid
                                         JOIN scplane s ON p.renum = s.renum WHERE serialnumber = pserialnum AND s.ddate = pddate AND
                                                                                   f.lastname = plastname AND f.firstname = pfirstname)  THEN '1' ELSE '0' END 
 INTO EXISTS_NUM
 FROM DUAL;
 IF  EXISTS_NUM = '1'  THEN
  INSERT INTO bpass VALUES (vnum, vdairport, vaairport, vddate, vseatnumber, vname, vgate, vterminal, vuserid);  
--  COMMIT;
  DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
  DBMS_OUTPUT.PUT_LINE(' ');
  DBMS_OUTPUT.PUT_LINE('KOREAN AIR'||'        '|| 'ž�±�'|| '            '|| 'BOARDING PASS');
  DBMS_OUTPUT.PUT_LINE(' ');
  DBMS_OUTPUT.PUT_LINE('NAME   '||vname || '                  ' ||'NAME   '||vname  );
  DBMS_OUTPUT.PUT_LINE('                                    ' ||'FROM   '||vdairport );
  DBMS_OUTPUT.PUT_LINE('FLIGHT '||vnumber || '  ' ||TO_CHAR(vddate,'MM-DD')||' TO  ' ||vaairport||'        '|| 'TO     ' ||vaairport );
  DBMS_OUTPUT.PUT_LINE('                                    '||'DATE   '||TO_CHAR(vddate,'MM-DD'));
  DBMS_OUTPUT.PUT_LINE('DEP TIME   '||TO_CHAR(vddate,'HH24:MI'));
  DBMS_OUTPUT.PUT_LINE('BOARDING   '||TO_CHAR(vddate-30/(24*60),'HH24:MI')||'   '||'GATE  '||vgate||'         ' || 'SEAT  '||vseatnumber||' FLIGHT  '||vnumber );
  DBMS_OUTPUT.PUT_LINE(' ');
  DBMS_OUTPUT.PUT_LINE('   �װ��� ��� 10������ ž���� �����˴ϴ�.');
  DBMS_OUTPUT.PUT_LINE(' ');
  DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
  
  DBMS_OUTPUT.PUT_LINE(' ');
  DBMS_OUTPUT.PUT_LINE('ž�±� �߱޵Ǿ����ϴ�!');
 ELSE
  RAISE_APPLICATION_ERROR( -20008 , '����/���� ������ �����ϴ�. �ٽ� Ȯ���� �ּ���.');
 END IF;
EXCEPTION
WHEN NO_DATA_FOUND THEN
    RAISE_APPLICATION_ERROR(-20001,'����/���� ������ �����ϴ�. �ٽ� Ȯ���� �ּ���.');
END;



-- <<<<< ��ȭ�� ���� �˻� >>>>>
CREATE OR REPLACE PROCEDURE se_lrule_01
(
 psection l_rule.route_section%TYPE
)
IS
 CURSOR vcursor IS
 SELECT seat_grade, MAX(numberofluggage)AS vnum
 FROM l_rule
 WHERE route_section = psection AND excess_fee = 0
 GROUP BY seat_grade;
BEGIN
 DBMS_OUTPUT.PUT_LINE('-------------------------------------');
 DBMS_OUTPUT.PUT_LINE(' ���¼���ޢ�      ������ ���Ϲ� ��뷮��');
 DBMS_OUTPUT.PUT_LINE('-------------------------------------');
 FOR vrow IN vcursor
 LOOP
 DBMS_OUTPUT.PUT(' '||vrow.seat_grade);
 DBMS_OUTPUT.PUT_LINE('               ' || vrow.vnum);
 END LOOP;
 DBMS_OUTPUT.PUT_LINE('-------------------------------------');
END;


-- <<<<< ��ȭ�� ����, �߰� >>>>>
--SELECT *
--FROM l_rule;
--ROLLBACK;

CREATE OR REPLACE PROCEDURE se_lrule_02
(
 psection l_rule.route_section%TYPE,
 pgrade l_rule.seat_grade%TYPE,
 pnum l_rule.numberofluggage%TYPE,
 pfee l_rule.excess_fee%TYPE
)
IS
 vfee l_rule.excess_fee%TYPE;
 vsection l_rule.route_section%TYPE;
 vgrade l_rule.seat_grade%TYPE;
 vnum l_rule.numberofluggage%TYPE;
BEGIN
 SELECT excess_fee ,route_section, seat_grade, numberofluggage 
  INTO vfee, vsection, vgrade, vnum
 FROM l_rule
 WHERE route_section = psection ANd seat_grade = pgrade ANd numberofluggage = pnum;
 
 UPDATE l_rule
 SET excess_fee = pfee
 WHERE route_section = psection ANd seat_grade = pgrade ANd numberofluggage = pnum;
 COMMIT;
 
 DBMS_OUTPUT.PUT_LINE('��ȭ�� ��� ������ �����Ǿ����ϴ�!');
 DBMS_OUTPUT.PUT_LINE(' ');
 DBMS_OUTPUT.PUT_LINE(vsection || '  ' || vgrade || ' '|| '��ȭ�� ' ||vnum||'���� �����');
 DBMS_OUTPUT.PUT_LINE(vfee || ' -> '|| pfee ||' �� ����Ǿ����ϴ�!');
END;



CREATE OR REPLACE PROCEDURE se_lrule_03
(
 pnum l_rule.lugregular_num%TYPE,
 pgrade l_rule.seat_grade%TYPE,
 plugnum l_rule.numberofluggage%TYPE,
 pfee l_rule.excess_fee%TYPE,
 psection l_rule.route_section%TYPE
)
IS
BEGIN
 INSERT INTO l_rule VALUES (pnum, pgrade, plugnum, pfee, psection);
 COMMIT;
 DBMS_OUTPUT.PUT_LINE('���ο� ��ȭ�� ������ �߰��Ǿ����ϴ�!');
 DBMS_OUTPUT.PUT_LINE(' ');
 DBMS_OUTPUT.PUT_LINE(psection || ' ' || pgrade || ' '|| '��ȭ�� ' ||plugnum||'���� ����� '|| pfee||'�Դϴ�');
END;


--DELETE FROM l_rule WHERE numberofluggage = 5;


--<<<<< ����� ��ȸ ����>>>>>
CREATE OR REPLACE PROCEDURE se_loungeinfo_01
(
 pcountry lounge_info.country%TYPE,
 pdestination_airport lounge_info.destination_airport%TYPE
)
IS
 vloungename lounge_info.lounge_name%TYPE;
 vlocation lounge_info.location%TYPE;
 voperatingtime lounge_info.operating_time%TYPE;
 voperator lounge_info.operator%TYPE;
 ventrypassenger lounge_info.entry_passenger%TYPE;
 vservice lounge_info.service%TYPE;
BEGIN
 SELECT lounge_name, location, operating_time, operator, entry_passenger, service
  INTO vloungename, vlocation, voperatingtime, voperator, ventrypassenger, vservice
 FROM lounge_info
 WHERE country = pcountry AND destination_airport = pdestination_airport;
 
 DBMS_OUTPUT.PUT_LINE(vloungename);
 DBMS_OUTPUT.PUT_LINE('��ġ : ' || vlocation);
 DBMS_OUTPUT.PUT_LINE('���Ϻ� ��ð� : ' || voperatingtime);
 DBMS_OUTPUT.PUT_LINE('��� : ' || voperator);
 DBMS_OUTPUT.PUT_LINE('���� ���� �°� : ' || ventrypassenger);
 DBMS_OUTPUT.PUT_LINE('���� : ' || vservice);
END;





-- <<<<< ������ ���� ��ȸ���� >>>>>
CREATE OR REPLACE PROCEDURE se_cservice_01
(
 parea cservice.area%TYPE
)
IS
BEGIN
 FOR vrow IN ( SELECT * 
 FROM cservice
 WHERE area = parea)
 LOOP
 IF vrow.cs_call2 IS NULL THEN
 DBMS_OUTPUT.PUT_LINE(vrow.country_name||'('||vrow.cs_num||')');
 DBMS_OUTPUT.PUT_LINE('��ȭ��ȣ : ' || vrow.cs_call1);
 DBMS_OUTPUT.PUT_LINE('���/�ð� : ' || vrow.lang_time);
 DBMS_OUTPUT.PUT_LINE(' ');
 ELSE
 DBMS_OUTPUT.PUT_LINE(vrow.country_name||'('||vrow.cs_num||')');
 DBMS_OUTPUT.PUT_LINE('��ȭ��ȣ : ' || vrow.cs_call1 || ',' || vrow.cs_call2);
 DBMS_OUTPUT.PUT_LINE('���/�ð� : ' || vrow.lang_time);
 DBMS_OUTPUT.PUT_LINE(' ');
 END IF;
 END LOOP;
END;




-- <<<<< ������ ���� �� ���� >>>>>
CREATE OR REPLACE PROCEDURE se_cservice_02
(
 vnum cservice.cs_num%TYPE, 
 varea cservice.area%TYPE,
 vcountry cservice.country_name%TYPE,
 vcall1 cservice.cs_call1%TYPE,
 vcall2 cservice.cs_call2%TYPE:=NULL,
 vlangtime VARCHAR2,
 vadminid cservice.adminid%TYPE
)
IS
BEGIN
 IF  vcall2 IS NULL THEN
 INSERT INTO cservice (cs_num, area, country_name, cs_call1,lang_time, adminid)
 VALUES (vnum, varea, vcountry, vcall1, vlangtime, vadminid);
 DBMS_OUTPUT.PUT_LINE('���ο� ������ ��� �Ǿ����ϴ�!');
 DBMS_OUTPUT.PUT_LINE(' ');
 DBMS_OUTPUT.PUT_LINE(' ');
 DBMS_OUTPUT.PUT_LINE(vcountry||'('||vnum||')');
 DBMS_OUTPUT.PUT_LINE('��ȭ��ȣ : ' || vcall1);
 DBMS_OUTPUT.PUT_LINE('���/�ð� : ' || vlangtime);
 ELSE
 INSERT INTO cservice (cs_num, area, country_name, cs_call1, cs_call2, lang_time, adminid)
 VALUES (vnum, varea, vcountry, vcall1, vcall2, vlangtime, vadminid);
 DBMS_OUTPUT.PUT_LINE('���ο� ������ ��� �Ǿ����ϴ�!');
 DBMS_OUTPUT.PUT_LINE(' ');
 DBMS_OUTPUT.PUT_LINE(' ');
 DBMS_OUTPUT.PUT_LINE(vcountry||'('||vnum||')');
 DBMS_OUTPUT.PUT_LINE('��ȭ��ȣ : ' || vcall1 || ',' || vcall2);
 DBMS_OUTPUT.PUT_LINE('���/�ð� : ' || vlangtime);
 END IF;
 COMMIT;
END;

--SELECT *
--FROM cservice;
--
--DELETE FROM cservice WHERE cs_num = '886';



-- <<<<< ������ ���� �� ���� >>>>>
-- 1) �ڱⰡ �� ���� ��ȸ
CREATE OR REPLACE PROCEDURE se_cservice_03
(
 padminid cservice.adminid%TYPE
)
IS
BEGIN
 FOR vrow IN ( SELECT * 
 FROM cservice
 WHERE adminid = padminid)
 LOOP
 IF vrow.cs_call2 IS NULL THEN
 DBMS_OUTPUT.PUT_LINE(vrow.country_name||'('||vrow.cs_num||')');
 DBMS_OUTPUT.PUT_LINE('��ȭ��ȣ : ' || vrow.cs_call1);
 DBMS_OUTPUT.PUT_LINE('���/�ð� : ' || vrow.lang_time);
 DBMS_OUTPUT.PUT_LINE(' ');
 ELSE
 DBMS_OUTPUT.PUT_LINE(vrow.country_name||'('||vrow.cs_num||')');
 DBMS_OUTPUT.PUT_LINE('��ȭ��ȣ : ' || vrow.cs_call1 || ',' || vrow.cs_call2);
 DBMS_OUTPUT.PUT_LINE('���/�ð� : ' || vrow.lang_time);
 DBMS_OUTPUT.PUT_LINE(' ');
 END IF;
 END LOOP;
END;



-- 2) ���ϴ� ���� ������ ��
-- 3) �� ���� ����
CREATE OR REPLACE PROCEDURE se_cservice_04
(
 pnum cservice.cs_num%TYPE ,
 pcall1 cservice.cs_call1%TYPE := NULL,
 pcall2 cservice.cs_call2%TYPE := NULL, 
 plangtime cservice.lang_time%TYPE := NULL
)
IS
BEGIN
 UPDATE cservice
 SET cs_call1 = NVL(pcall1,cs_call1),
     cs_call2 = NVL(pcall2,cs_call2),
     lang_time = NVL(plangtime, lang_time)
 WHERE cs_num = pnum;
 DBMS_OUTPUT.PUT_LINE('���� �Ϸ�Ǿ����ϴ�!');
 COMMIT;
END;



-- <<<<< ������ ���� �� ���� >>>>>
CREATE OR REPLACE PROCEDURE SE_CSERVICE_05
(
 pnum cservice.cs_num%TYPE
)
IS
BEGIN
 DELETE FROM cservice WHERE cs_num = pnum;
 DBMS_OUTPUT.PUT_LINE('���� �Ϸ�Ǿ����ϴ�!');
 COMMIT;
END;















-------------------------------------------- ���� ���� ------------------------------------------------------------------
-------------------------------------------- ���� ���� ------------------------------------------------------------------
-------------------------------------------- ���� ���� ------------------------------------------------------------------
-------------------------------------------- ���� ���� ------------------------------------------------------------------
-------------------------------------------- ���� ���� ------------------------------------------------------------------
-------------------------------------------- ���� ���� ------------------------------------------------------------------
-------------------------------------------- ���� ���� ------------------------------------------------------------------
-------------------------------------------- ���� ���� ------------------------------------------------------------------
-------------------------------------------- ���� ���� ------------------------------------------------------------------
-------------------------------------------- ���� ���� ------------------------------------------------------------------
-------------------------------------------- ���� ���� ------------------------------------------------------------------
-------------------------------------------- ���� ���� ------------------------------------------------------------------
-------------------------------------------- ���� ���� ------------------------------------------------------------------
-------------------------------------------- ���� ���� ------------------------------------------------------------------
-------------------------------------------- ���� ���� ------------------------------------------------------------------
-------------------------------------------- ���� ���� ------------------------------------------------------------------
-------------------------------------------- ���� ���� ------------------------------------------------------------------
delete scplane ;
--���� ���� 
exec mk_scplane_01('202404050800', '202404050925' ,'korea' ,'japan','#admin001','SEOUL.ICN','FUK.FUK');
exec mk_scplane_01('202404200800', '202404200925' ,'korea' ,'japan','#admin001','SEOUL.ICN','FUK.FUK');
exec mk_scplane_01('202404201835', '202404202000' ,'korea' ,'japan','#admin001','SEOUL.ICN','FUK.FUK');
exec mk_scplane_01('202403270625', '202403270715' ,'korea' ,'Korea','#admin001','SEOUL.GMP','JEJU.CJU');
exec mk_scplane_01('202403270915', '202403271025' ,'korea' ,'Korea','#admin001','SEOUL.GMP','JEJU.CJU');
exec mk_scplane_01('202403271330', '202403271445' ,'korea' ,'Korea','#admin001','SEOUL.GMP','JEJU.CJU');
exec mk_scplane_01('202404200640', '202404200750' ,'korea' ,'Korea','#admin002','SEOUL.GMP','JEJU.CJU');
exec mk_scplane_01('202404201300', '202404201410' ,'korea' ,'Korea','#admin002','SEOUL.GMP','JEJU.CJU');
exec mk_scplane_01('202405100905', '202405101025' ,'korea' ,'china','#admin002','SEOUL.ICN','BEIJING.PEK');
exec mk_scplane_01('202405101040', '202405101205' ,'korea' ,'china','#admin002','SEOUL.ICN','BEIJING.PEK');
exec mk_scplane_01('202405101840', '202405102005' ,'korea' ,'china','#admin002','SEOUL.ICN','BEIJING.PEK');
exec mk_scplane_01 ('202404190730','202404190840','korea','korea','#admin001','SEOUL.GMP','JEJU.CJU');
exec mk_scplane_01  ('202404191900','202404192010','korea','korea','#admin001','SEOUL.GMP','JEJU.CJU');
exec mk_scplane_01  ('202404192030','202404192140','korea','korea','#admin001','SEOUL.GMP','JEJU.CJU');
exec mk_scplane_01  ('202404050800','202404050925','korea','JAPAN','#admin001','SEOUL.ICN','FUK.FUK');
exec mk_scplane_01  ('202404051355','202404051525','korea','JAPAN','#admin001','SEOUL.ICN','FUK.FUK');
exec mk_scplane_01  ('202404051835','202404052000','korea','JAPAN','#admin001','SEOUL.ICN','FUK.FUK');
exec mk_scplane_01  ('202404200815','202404200940','korea','JAPAN','#admin001','SEOUL.ICN','BEIJING.PEK');
exec mk_scplane_01  ('202404200905','202404201025','korea','JAPAN','#admin002','SEOUL.ICN','BEIJING.PEK');
exec mk_scplane_01  ('202404201840','202404202005','korea','JAPAN','#admin002','SEOUL.ICN','BEIJING.PEK');
exec mk_scplane_01  ('202404201000','202404210020','korea','USA','#admin002','SEOUL.ICN','NYC.JFK');
exec mk_scplane_01  ('202404201930','202404210930','korea','USA','#admin002','SEOUL.ICN','NYC.JFK');
exec mk_scplane_01  ('202405100930','202405102330','korea','USA','#admin002','SEOUL.ICN','BOS.BOS');
exec mk_scplane_01  ('202405100920','202405110340','korea','USA','#admin002','SEOUL.ICN','BOS.BOS');
exec mk_scplane_01  ('202403271600','202403280633','korea','USA','#admin002','SEOUL.ICN','LAS.LAS');
exec mk_scplane_01  ('202403271430','202403280631','korea','USA','#admin002','SEOUL.ICN','LAS.LAS');
exec mk_scplane_01  ('202403271940','202403281200','korea','USA','#admin002','SEOUL.ICN','LAS.LAS');
delete scplane ;


---------- ȸ������ --------------------------------------------------
---------- ȸ������ --------------------------------------------------
---------- ȸ������ --------------------------------------------------

exec mk_flightuser_01('user001', 'ȫ', '�浿', 'Hong', 'GilDong', 'password123', TO_DATE('1990-01-01', 'YYYY-MM-DD'), 'Male', 'user001@example.com', '01012345678', 'Korea', '1234-5678-9012-3456',12,35);
delete flightuser where userid='user001';
select * from flightuser;
select * from yesno;
----------------ȸ�� Ż�� ------------------------------
----------------ȸ�� Ż�� ------------------------------
----------------ȸ�� Ż�� ------------------------------
----------------ȸ�� Ż�� ------------------------------
exec mk_flightuser_02('user001','password123');
select * from flightuser;
select * from yesno;
--------------------------------�α׾ƿ� ------
--------------------------------�α׾ƿ� ------
--------------------------------�α׾ƿ� ------
--------------------------------�α׾ƿ� ------

exec mk_loginhis_01;
select * from loginhis;
----------------------�α��� -----------------------------
----------------------�α��� -----------------------------
----------------------�α��� -----------------------------
----------------------�α��� -----------------------------
exec mk_flightuser_03('user001','password123');

select * from loginhis;

--------------------------------------------------���� ��ȸ ���
--------------------------------------------------���� ��ȸ ���
--------------------------------------------------���� ��ȸ ���
--------------------------------------------------���� ��ȸ ���
--------------------------------------------------���� ��ȸ ���
exec mk_scplane_02 ('SEOUL','JEJU','240328',1,'�Ϲݼ�');
exec mk_scplane_02 ('SEOUL','LAS','240327',1,'�Ϲݼ�');
exec mk_scplane_02 ('SEOUL','JEJU','240420',1,'�Ϲݼ�');
select * from scplane;
----------------------------- ���� ( ���� ) ��� ------
----------------------------- ���� ( ���� ) ��� ------
----------------------------- ���� ( ���� ) ��� ------
----------------------------- ���� ( ���� ) ��� ------


exec MK_PAYREFUND_01('2403200930','GMP','CJU','20A',1,'����','ī��',1);
exec MK_PAYREFUND_01('2403271940','ICN','LAS','20B',4,'����','ī��',1);


select S.* ,DDATE,TO_CHAR(DDATE,'HH24:MI') from scplane S;
select * from seat_num;

--------------�α����� �ʼ����ؾ���----------------------
--------------�α����� �ʼ����ؾ���----------------------
--------------�α����� �ʼ����ؾ���----------------------
--------------�α����� �ʼ����ؾ���----------------------
--------------�α����� �ʼ����ؾ���----------------------
exec mk_flightuser_03('user001','password123');

exec mk_scplane_02 ('SEOUL','FUK','240405',1,'�Ϲݼ�');
exec mk_scplane_02 ('SEOUL','JEJU','240419',1,'�Ϲݼ�');
exec mk_scplane_02 ('SEOUL','BEIJING','240420',1,'�Ϲݼ�');
exec mk_scplane_02 ('SEOUL','NYC','240420',1,'�Ϲݼ�');
---------------------����  ���� ��ȸ-----------------
---------------------����  ���� ��ȸ-----------------
exec mk_payrefund_04 
select * from payrefund;
-------------------------------------------------
-------------------------------------------------
-------------------------------------------------
------------------------------���� ȯ�� ----------------
exec mk_payrefund_03(1);
delete payrefund ;
--------------------------------���� �� ž�±� �߱�
--------------------------------���� �� ž�±� �߱�
--------------------------------���� �� ž�±� �߱�
EXEC SE_PAYREFUND_01 (1,TO_DATE('2024-03-20 09:30', 'YYYY-MM-DD HH24:MI'),'Hong', 'GilDong');
EXEC SE_PAYREFUND_01 (2,TO_DATE('2024-03-20 10:45', 'YYYY-MM-DD HH24:MI'),'Hong', 'GilDong');

---------------------��ȭ�� �����˻�--------------
---------------------��ȭ�� �����˻�--------------

EXEC se_lrule_01('������ ����');
EXEC se_lrule_01('������ ���Ͼƽþ�');


-----------------------��ȭ�� ���� ���� --------------------
-----------------------��ȭ�� ���� ���� --------------------
-----------------------��ȭ�� ���� ���� --------------------
EXEC SE_LRULE_02('������ ����', '�Ϲݼ�',2,50000);
-----------------------��ȭ�� ���� �߰� --------------------
-----------------------��ȭ�� ���� �߰� --------------------
-----------------------��ȭ�� ���� �߰� --------------------
EXEC SE_LRULE_03(21,'�Ϲݼ�', 5, 250000,'������ ����');
----------------------------------------------------------
----------------------�߰� ��ȭ�� ��� ��� ------------
--Ʈ����

--------------------����� ��ȸ ----------------------
--------------------����� ��ȸ ----------------------

EXEC SE_LOUNGEINFO_01( '����','�����(YVR)');
EXEC SE_LOUNGEINFO_01( '���Ͼƽþ�' ,'����/����Ÿ');

-----------------------------������ ���� ��ȸ------------
-----------------------------������ ���� ��ȸ------------

EXEC SE_CSERVICE_01('�ѱ�');
EXEC SE_CSERVICE_01('���Ͼƽþ�');

-----------------������ ���� �� �ۼ�
-----------------������ ���� �� �ۼ�
EXEC SE_CSERVICE_02 ( '886','���Ͼƽþ�','�븸','02-2518-2200', '','�ѱ���/���� : ���� 24�ð� �Ϻ��� : ���� 9:00-19:00(�Ϻ� �����ð� ����) �߱��� : ���� 08:30-12:00, 13:00-17:30(�븸 �����ð� ����, �ָ�/������ ����)','admin002');
EXEC SE_CSERVICE_02 ( '886','���Ͼƽþ�','�븸','02-2518-2200', '','�ѱ���/���� : ���� 24�ð� �Ϻ��� : ���� 9:00-19:00(�Ϻ� �����ð� ����) �߱��� : ���� 08:30-12:00, 13:00-17:30(�븸 �����ð� ����, �ָ�/������ ����)','admin002');

---------------------������ ���� �� ����

EXEC SE_CSERVICE_03('#admin003');
-----------------------
EXEC SE_CSERVICE_04( pnum => '61', pcall1 => '03-9262-6111');


---������ ���� �� ����
EXEC  SE_CSERVICE_05('61');


select * from dfare;
select * from loginhis;
select * from adminstrator;
select * from userdetail;
select * from scplane;
SELECT * FROM GIFTCARD;

----------------------------------------------------------
----------------------------���-------------------------------------------------
----------------------------���-------------------------------------------------
----------------------------���-------------------------------------------------
----------------------------���-------------------------------------------------
----------------------------���-------------------------------------------------
--������ �⺻���� �ۼ� ����
--EXEC  up_createifare('ICN', 'FUK', '�Ϲݼ�', 150000, 110000, 20300, 21000, '#admin003');
--                    (keynum, starta, arrive, sg, fare, redis, tax, fuelch, adminid)
SELECT *
FROM ifare;
CREATE OR REPLACE PROCEDURE up_createifare (
    
    p_starta IN VARCHAR2,
    p_arrive IN VARCHAR2,
    p_sg IN VARCHAR2,
    p_fare IN NUMBER,
    p_redis IN NUMBER,
    p_tax IN NUMBER,
    p_fuelch IN NUMBER,
    p_adminid IN VARCHAR2
    )
IS
    v_admin_count NUMBER;
    v_keynum ifare.keynum%TYPE;
BEGIN
    -- ������ ���� Ȯ��
    SELECT COUNT(*)
    INTO v_admin_count
    FROM Adminstrator
    WHERE AdminID = p_adminid;

    IF v_admin_count = 0 THEN
        DBMS_OUTPUT.PUT_LINE('�ش� �����ڴ� ������ �����ϴ�.');
        RETURN;
    END IF;

    -- KEYNUM �� �Ѱ��� ����
    SELECT NVL(MAX(keynum), 0) + 1 INTO v_keynum FROM ifare;

    -- ���� ���� �ۼ�
    INSERT INTO ifare (keynum, starta, arrive, sg, fare, redis, tax, fuelch, adminid)
    VALUES (v_keynum, p_starta, p_arrive, p_sg, p_fare, p_redis, p_tax, p_fuelch, p_adminid);
    DBMS_OUTPUT.PUT_LINE('���� ������ ���������� �߰��Ǿ����ϴ�.');
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('�ش��ϴ� �����ڰ� �����ϴ�.');
END;

------------------------------------------------------------------------------



--������ ���� ���̺� ��������
--EXEC up_updateifare(3, 'IC', 'FU', '�ݼ�', 333333, 333333, 33333, 33333, '#admin001');
--                   (keynum, starta, arrive, sg, fare, redis, tax, fuelch, adminid)
--EXEC up_updateifare(3, NULL, NULL, '���', NULL, NULL, NULL, NULL, '#admin005');
--                  �Ϻθ� �����ϰ���������� NULL���� �ش�.
--                  ������ ��� adminid�� ����Ȯ�ο��� ����
CREATE OR REPLACE PROCEDURE up_updateifare (
    p_keynum IN NUMBER,
    p_starta IN VARCHAR2 DEFAULT NULL,
    p_arrive IN VARCHAR2 DEFAULT NULL,
    p_sg IN VARCHAR2 DEFAULT NULL,
    p_fare IN NUMBER DEFAULT NULL,
    p_redis IN NUMBER DEFAULT NULL,
    p_tax IN NUMBER DEFAULT NULL,
    p_fuelch IN NUMBER DEFAULT NULL,
    p_adminid IN VARCHAR2
)
IS
    v_admin_count NUMBER;
BEGIN
    -- ������ ���� Ȯ��
    SELECT COUNT(*)
    INTO v_admin_count
    FROM Adminstrator
    WHERE AdminID = p_adminid;

    IF v_admin_count = 0 THEN
        DBMS_OUTPUT.PUT_LINE('�ش� �����ڴ� ������ �����ϴ�.');
        RETURN;
    END IF;

    -- �Ű������� NULL�� �ƴϸ� �ش� ������ ����
    UPDATE ifare
    SET starta = COALESCE(p_starta, starta),
        arrive = COALESCE(p_arrive, arrive),
        sg = COALESCE(p_sg, sg),
        fare = COALESCE(p_fare, fare),
        redis = COALESCE(p_redis, redis),
        tax = COALESCE(p_tax, tax),
        fuelch = COALESCE(p_fuelch, fuelch)
    WHERE keynum = p_keynum;
    
    DBMS_OUTPUT.PUT_LINE('���� ������ ���������� �����Ǿ����ϴ�.');
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('�ش��ϴ� �����ڰ� �����ϴ�.');
END;
------------------------------------------------------------------------------
--������ ���� ���̺� ���� ���ν���
SELECT *
FROM ifare;
--EXEC up_deleteifare(3, '#admin001');
--EXEC up_deleteifare('5~10', '#admin001');
--EXEC up_deleteifare('4,11,12,13', '#admin001');
--�Ѱ��� �ุ ���ﶧ���� ���ڸ� �Ű������� �ް�
--�ΰ��̻� Ȥ�� ������ ���� ���ﶧ���� ,�� ~�� �Է��� ���ڿ��� �Ű������� �� �� �ִ�.
CREATE OR REPLACE PROCEDURE up_deleteifare (
    p_range_or_nums IN VARCHAR2,
    p_adminid IN VARCHAR2
)
IS
    v_admin_count NUMBER;
    v_deleted_count NUMBER := 0;
BEGIN
    -- ������ ���� Ȯ��
    SELECT COUNT(*)
    INTO v_admin_count
    FROM Adminstrator
    WHERE AdminID = p_adminid;

    IF v_admin_count = 0 THEN
        DBMS_OUTPUT.PUT_LINE('�ش� �����ڴ� ������ �����ϴ�.');
        RETURN;
    END IF;

    -- ��ǥ�� ���е� Ű�ѵ� �Ľ��Ͽ� ����
    IF INSTR(p_range_or_nums, '~') > 0 THEN -- ���� ���·� ���� ���
        FOR i IN (
            SELECT TO_NUMBER(REGEXP_SUBSTR(p_range_or_nums, '\d+', 1, 1)) AS start_keynum,
                   TO_NUMBER(REGEXP_SUBSTR(p_range_or_nums, '\d+', 1, 2)) AS end_keynum
            FROM dual
        ) LOOP
            FOR j IN i.start_keynum..i.end_keynum LOOP
                DELETE FROM ifare -- ifare ���̺�� ����
                WHERE keynum = j;
                v_deleted_count := v_deleted_count + SQL%ROWCOUNT;
            END LOOP;
        END LOOP;
    ELSE -- ��ǥ�� ���е� Ű�ѵ��� ���� ��� �Ǵ� ���� Ű���� ���� ���
        FOR i IN (
            SELECT TO_NUMBER(REGEXP_SUBSTR(p_range_or_nums, '\d+', 1, LEVEL)) AS keynum
            FROM dual
            CONNECT BY LEVEL <= REGEXP_COUNT(p_range_or_nums, '\d+')
        ) LOOP
            DELETE FROM ifare -- ifare ���̺�� ����
            WHERE keynum = i.keynum;
            v_deleted_count := v_deleted_count + SQL%ROWCOUNT;
        END LOOP;
    END IF;

    -- ������ �� ���� 0�̸� �ش��ϴ� ���� ������ ���ٰ� ���
    IF v_deleted_count = 0 THEN
        DBMS_OUTPUT.PUT_LINE('�ش��ϴ� ���� ������ �����ϴ�.');
    ELSE
        DBMS_OUTPUT.PUT_LINE(v_deleted_count || '���� ���� ������ ���������� �����Ǿ����ϴ�.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('���� ������ �����ϴ� ���� ������ �߻��߽��ϴ�.');
END;


















--------------------------------------------------------------------------------------------------------
--������ �⺻���� �ۼ� ����
--EXEC up_createdfare('������', 'Ư��', '��ȣ', '�Ϲݼ�', '����/����', 50000, 1000, '#admin001', '�ָ�');
--                    (keynum, starta, arrive, sg, fare, redis, tax, fuelch, adminid)
CREATE OR REPLACE PROCEDURE up_createdfare (
    p_peak IN VARCHAR2,
    p_discount IN VARCHAR2,
    p_timezone IN VARCHAR2,
    p_sg IN VARCHAR2,
    p_route IN VARCHAR2,
    p_fare IN NUMBER,
    p_redis IN NUMBER,
    p_adminid IN VARCHAR2,
    p_wknddy IN VARCHAR2
)
IS
    v_admin_count NUMBER;
    v_keynum dfare.keynum%TYPE;
BEGIN
    -- ������ ���� Ȯ��
    SELECT COUNT(*)
    INTO v_admin_count
    FROM Adminstrator
    WHERE AdminID = p_adminid;

    IF v_admin_count = 0 THEN
        DBMS_OUTPUT.PUT_LINE('�ش� �����ڴ� ������ �����ϴ�.');
        RETURN;
    END IF;

    -- KEYNUM �� ����
    SELECT NVL(MAX(keynum), 0) + 1 INTO v_keynum FROM dfare;

    -- ���� ���� �ۼ�
    INSERT INTO dfare (keynum, peak, discount, timezone, sg, route, fare, redis, adminid, wknddy)
    VALUES (v_keynum, p_peak, p_discount, p_timezone, p_sg, p_route, p_fare, p_redis, p_adminid, p_wknddy);

    DBMS_OUTPUT.PUT_LINE('���� ������ ���������� �߰��Ǿ����ϴ�.');
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('�ش��ϴ� �����ڰ� �����ϴ�.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('���� ������ �߰��ϴ� ���� ������ �߻��߽��ϴ�.');
END;



--------------------------------------------------------------------------------------------------------

--������ ���� ���� ���ν���
--EXEC up_updatedfare(4, NULL, NULL, NULL, NULL, NULL, 888500, NULL, '#admin001', 'ȣ������');
--                  (keynum, peak, discount, timezone, sg, route, fare, redis, adminid, wknddy)
--                  �Ű������� �����ϰ���� ���� �ְų�, NULL�� �Է��Ͽ� ������ ���� ������� �ʰ� �� �� �ִ�.

CREATE OR REPLACE PROCEDURE up_updatedfare (
    p_keynum IN dfare.keynum%TYPE,
    p_peak IN VARCHAR2 DEFAULT NULL,
    p_discount IN VARCHAR2 DEFAULT NULL,
    p_timezone IN VARCHAR2 DEFAULT NULL,
    p_sg IN VARCHAR2 DEFAULT NULL,
    p_route IN VARCHAR2 DEFAULT NULL,
    p_fare IN NUMBER DEFAULT NULL,
    p_redis IN NUMBER DEFAULT NULL,
    p_adminid IN VARCHAR2,
    p_wknddy IN VARCHAR2 DEFAULT NULL
)
IS
    v_admin_count NUMBER;
BEGIN
    -- ������ ���� Ȯ��
    SELECT COUNT(*)
    INTO v_admin_count
    FROM Adminstrator
    WHERE AdminID = p_adminid;

    IF v_admin_count = 0 THEN
        DBMS_OUTPUT.PUT_LINE('�ش� �����ڴ� ������ �����ϴ�.');
        RETURN;
    END IF;

    -- ���� ���� ����
    UPDATE dfare
    SET peak = COALESCE(p_peak, peak),
        discount = COALESCE(p_discount, discount),
        timezone = COALESCE(p_timezone, timezone),
        sg = COALESCE(p_sg, sg),
        route = COALESCE(p_route, route),
        fare = COALESCE(p_fare, fare),
        redis = COALESCE(p_redis, redis),
        wknddy = COALESCE(p_wknddy, wknddy)
    WHERE keynum = p_keynum;

    DBMS_OUTPUT.PUT_LINE('���� ������ ���������� �����Ǿ����ϴ�.');
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('�ش��ϴ� ���� ������ �����ϴ�.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('���� ������ �����ϴ� ���� ������ �߻��߽��ϴ�.');
END;


--------------------------------------------------------------------------------------------------------
--������ �������� ���� ���ν���
--EXEC up_deletedfare(13, '#admin001');
--keynum���� ������ID�� �Ű������� �޾� �ش� ���� ������ ����
--EXEC up_deletedfare('9~13', '#admin001');
--                  ���ڿ��� ���ڿ� ���� ���̿� '~' �� �Է��� ���� �ָ� �ټ����� ������ ����
--EXEC up_deletedfare('9,13,4,7', '#admin001');
--                  ','�� �ָ� �ش��ϴ� ��ȣ�� ��� ���� ����
CREATE OR REPLACE PROCEDURE up_deletedfare (
    p_range_or_nums IN VARCHAR2,
    p_adminid IN VARCHAR2
)
IS
    v_admin_count NUMBER;
    v_deleted_count NUMBER := 0;
BEGIN
    -- ������ ���� Ȯ��
    SELECT COUNT(*)
    INTO v_admin_count
    FROM Adminstrator
    WHERE AdminID = p_adminid;

    IF v_admin_count = 0 THEN
        DBMS_OUTPUT.PUT_LINE('�ش� �����ڴ� ������ �����ϴ�.');
        RETURN;
    END IF;

    -- ��ǥ�� ���е� Ű�ѵ� �Ľ��Ͽ� ����
   IF INSTR(p_range_or_nums, '~') > 0 THEN -- ���� ���·� ���� ���
    FOR i IN (
        SELECT TO_NUMBER(REGEXP_SUBSTR(p_range_or_nums, '\d+', 1, 1)) AS start_keynum,
               TO_NUMBER(REGEXP_SUBSTR(p_range_or_nums, '\d+', 1, 2)) AS end_keynum
        FROM dual
    ) LOOP
        FOR j IN i.start_keynum..i.end_keynum LOOP
            DELETE FROM dfare -- dfare ���̺�� ����
            WHERE keynum = j;
            v_deleted_count := v_deleted_count + SQL%ROWCOUNT;
        END LOOP;
    END LOOP;
ELSE -- ��ǥ�� ���е� Ű�ѵ��� ���� ��� �Ǵ� ���� Ű���� ���� ���
    FOR i IN (
        SELECT TO_NUMBER(REGEXP_SUBSTR(p_range_or_nums, '\d+', 1, LEVEL)) AS keynum
        FROM dual
        CONNECT BY LEVEL <= REGEXP_COUNT(p_range_or_nums, '\d+')
    ) LOOP
        DELETE FROM dfare -- dfare ���̺�� ����
        WHERE keynum = i.keynum;
        v_deleted_count := v_deleted_count + SQL%ROWCOUNT;
    END LOOP;
END IF;

    -- ������ �� ���� 0�̸� �ش��ϴ� ���� ������ ���ٰ� ���
    IF v_deleted_count = 0 THEN
        DBMS_OUTPUT.PUT_LINE('�ش��ϴ� ���� ������ �����ϴ�.');
    ELSE
        DBMS_OUTPUT.PUT_LINE(v_deleted_count || '���� ���� ������ ���������� �����Ǿ����ϴ�.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('���� ������ �����ϴ� ���� ������ �߻��߽��ϴ�.');
END;
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
------------------------------------------------------------------------------------


----------------------------------------------------------------------------------����
----------------------------------------------------------------------------------����
----------------------------------------------------------------------------------����
----------------------------------------------------------------------------------����
----------------------------------------------------------------------------------����
----------------------------------------------------------------------------------����
----------------------------------------------------------------------------------����
-- �������� ����, ����, ����, ��ȸ
-- �������� ������ ���� ���ν���

delete notice where 1=1;
CREATE OR REPLACE PROCEDURE ye_Notice_01(
    p_Notice_num IN VARCHAR2,
    p_Notice_title IN VARCHAR2,
    p_Notice_contents IN CLOB,
    p_Notice_topic IN VARCHAR2,
    p_AdminID IN VARCHAR2
)
AS
BEGIN
    INSERT INTO Notice (Notice_num, Notice_title, Notice_contents, Notice_topic, AdminID)
    VALUES (p_Notice_num, p_Notice_title, p_Notice_contents, p_Notice_topic, p_AdminID);
    DBMS_OUTPUT.PUT_LINE('"���ο� ���������� �߰��Ǿ����ϴ�."');
    COMMIT;
END;


SET SERVEROUTPUT ON;
BEGIN
    ye_Notice_01('10', '���ο� ��������', '���ο� ����', '���ο� ����', '#admin003');
END;

SELECT * FROM notice;
/
SET SERVEROUTPUT ON;
DECLARE
    notice_cursor SYS_REFCURSOR;
BEGIN
    ye_Notice_02('10', notice_cursor);
END;


-- �������� ��ȸ�� ���� ���ν���
CREATE OR REPLACE PROCEDURE ye_Notice_02(
    p_Notice_num IN VARCHAR2,
    p_Notice OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN p_Notice FOR
    SELECT *
    FROM Notice
    WHERE Notice_num = p_Notice_num;
    DBMS_OUTPUT.PUT_LINE('"���������� ����߽��ϴ�."');
    FOR notice_rec IN (SELECT * FROM Notice WHERE Notice_num = p_Notice_num) LOOP
        DBMS_OUTPUT.PUT_LINE('Notice_num: ' || notice_rec.Notice_num || ', Notice_title: ' || notice_rec.Notice_title || ', Notice_contents: ' || notice_rec.Notice_contents || ', Notice_topic: ' || notice_rec.Notice_topic || ', AdminID: ' || notice_rec.AdminID);
    END LOOP;
END;
SET SERVEROUTPUT ON;
DECLARE
    notice_cursor SYS_REFCURSOR;
BEGIN
    ye_Notice_02('1', notice_cursor);
END;

-- �������� ������ ���� ���ν���
CREATE OR REPLACE PROCEDURE ye_Notice_03(
    p_Notice_num IN VARCHAR2,
    p_New_Title IN VARCHAR2
)
AS
BEGIN
    UPDATE Notice
    SET Notice_title = p_New_Title
    WHERE Notice_num = p_Notice_num;
    DBMS_OUTPUT.PUT_LINE('Notice_num: ' || p_Notice_num || ', Notice_title: ' || p_New_Title || ' - ������ ���������� ����Ǿ����ϴ�.');
    COMMIT;
END;

SET SERVEROUTPUT ON;
BEGIN
    UpdateNoticeTitle('1', '�����Ű� ���� ����ٳ�����');
END;


-- �������� ������ ���� ���ν���
CREATE OR REPLACE PROCEDURE ye_Notice_04(
    p_Notice_num IN VARCHAR2
)
AS
BEGIN
    DELETE FROM Notice
    WHERE Notice_num = p_Notice_num;
    DBMS_OUTPUT.PUT_LINE('"���������� �����Ǿ����ϴ�."');
    COMMIT;
END;

SET SERVEROUTPUT ON;
BEGIN
    ye_Notice_04('10');
END;
SELECT * FROM notice;

-- ��� �߰� �� ����
CREATE OR REPLACE PROCEDURE ye_Update_Contract (
    p_Contract_code IN NUMBER,
    p_Essentiality IN VARCHAR2,
    p_Contract_title IN VARCHAR2,
    p_Contract_contents IN VARCHAR2
)
IS
    v_NumUpdated NUMBER;
BEGIN
    UPDATE Contract
    SET Essentiality = p_Essentiality,
        Contract_title = p_Contract_title,
        Contract_contents = p_Contract_contents
    WHERE Contract_code = p_Contract_code;
    v_NumUpdated := SQL%ROWCOUNT;
    IF v_NumUpdated = 0 THEN
        INSERT INTO Contract (Contract_code, Essentiality, Contract_title, Contract_contents)
        VALUES (p_Contract_code, p_Essentiality, p_Contract_title, p_Contract_contents);
        
        SYS.DBMS_OUTPUT.PUT_LINE('Contract_code ' || p_Contract_code || '�� ���ο� ����� �߰��Ǿ����ϴ�.');
    ELSE
        SYS.DBMS_OUTPUT.PUT_LINE('Contract_code ' || p_Contract_code || '�� ���� ��� ������ �����Ǿ����ϴ�.');
    END IF;
-- EXCEPTION
END ye_Update_Contract;
--
SET SERVEROUTPUT ON;
BEGIN
    --ye_Update_Contract(10, '����', '2023�� 02�� 15�� �߰���', '�߰��Ϸ�');
    ye_Update_Contract(10, '����', '2024�� 03�� 11�� ������', '�����Ϸ�');
END;

SELECT * FROM contract;

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
---------------------------����----------------------------------------------------------------
---------------------------����----------------------------------------------------------------
---------------------------����----------------------------------------------------------------
---------------------------����----------------------------------------------------------------
-------------------------------------------
-- <<<<< ������ ���� �� ���� >>>>>
-- 1) �ڱⰡ �� ���� ��ȸ
CREATE OR REPLACE PROCEDURE se_cservice_03
(
 padminid cservice.adminid%TYPE
)
IS
BEGIN
 FOR vrow IN ( SELECT * 
 FROM cservice
 WHERE adminid = padminid)
 LOOP
 IF vrow.cs_call2 IS NULL THEN
 DBMS_OUTPUT.PUT_LINE(vrow.country_name||'('||vrow.cs_num||')');
 DBMS_OUTPUT.PUT_LINE('��ȭ��ȣ : ' || vrow.cs_call1);
 DBMS_OUTPUT.PUT_LINE('���/�ð� : ' || vrow.lang_time);
 DBMS_OUTPUT.PUT_LINE(' ');
 ELSE
 DBMS_OUTPUT.PUT_LINE(vrow.country_name||'('||vrow.cs_num||')');
 DBMS_OUTPUT.PUT_LINE('��ȭ��ȣ : ' || vrow.cs_call1 || ',' || vrow.cs_call2);
 DBMS_OUTPUT.PUT_LINE('���/�ð� : ' || vrow.lang_time);
 DBMS_OUTPUT.PUT_LINE(' ');
 END IF;
 END LOOP;
END;

EXEC SE_CSERVICE_03('#admin003');


---------------------------------------------------
-- 2) ���ϴ� ���� ������ ��
-- 3) �� ���� ����
CREATE OR REPLACE PROCEDURE se_cservice_04
(
 pnum cservice.cs_num%TYPE ,
 pcall1 cservice.cs_call1%TYPE := NULL,
 pcall2 cservice.cs_call2%TYPE := NULL, 
 plangtime cservice.lang_time%TYPE := NULL
)
IS
BEGIN
 UPDATE cservice
 SET cs_call1 = NVL(pcall1,cs_call1),
     cs_call2 = NVL(pcall2,cs_call2),
     lang_time = NVL(plangtime, lang_time)
 WHERE cs_num = pnum;
 DBMS_OUTPUT.PUT_LINE('���� �Ϸ�Ǿ����ϴ�!');
 COMMIT;
END;

EXEC SE_CSERVICE_04( pnum => '61', pcall1 => '03-9262-6111');

--------------------------------------
-- 3) �� ����
CREATE OR REPLACE PROCEDURE SE_CSERVICE_05
(
 pnum cservice.cs_num%TYPE
)
IS
BEGIN
 DELETE FROM cservice WHERE cs_num = pnum;
 DBMS_OUTPUT.PUT_LINE('���� �Ϸ�Ǿ����ϴ�!');
 COMMIT;
END;

EXEC  SE_CSERVICE_05('61');


---------------------------------------
-- <<<<< ��ȭ�� ���� >>>>>
--SELECT *
--FROM l_rule;
--ROLLBACK;

CREATE OR REPLACE PROCEDURE se_lrule_02
(
 psection l_rule.route_section%TYPE,
 pgrade l_rule.seat_grade%TYPE,
 pnum l_rule.numberofluggage%TYPE,
 pfee l_rule.excess_fee%TYPE
)
IS
 vfee l_rule.excess_fee%TYPE;
 vsection l_rule.route_section%TYPE;
 vgrade l_rule.seat_grade%TYPE;
 vnum l_rule.numberofluggage%TYPE;
BEGIN
 SELECT excess_fee ,route_section, seat_grade, numberofluggage 
  INTO vfee, vsection, vgrade, vnum
 FROM l_rule
 WHERE route_section = psection ANd seat_grade = pgrade ANd numberofluggage = pnum;
 
 UPDATE l_rule
 SET excess_fee = pfee
 WHERE route_section = psection ANd seat_grade = pgrade ANd numberofluggage = pnum;
 COMMIT;
 
 DBMS_OUTPUT.PUT_LINE('��ȭ�� ��� ������ �����Ǿ����ϴ�!');
 DBMS_OUTPUT.PUT_LINE(' ');
 DBMS_OUTPUT.PUT_LINE(vsection || '  ' || vgrade || ' '|| '��ȭ�� ' ||vnum||'���� �����');
 DBMS_OUTPUT.PUT_LINE(vfee || ' -> '|| pfee ||' �� ����Ǿ����ϴ�!');
END;

EXEC SE_LRULE_02('������ ����', '�Ϲݼ�',2,50000);

---------------------------------------------------
-- <<<<< ��ȭ�� �߰� >>>>>
CREATE OR REPLACE PROCEDURE se_lrule_03
(
 pnum l_rule.lugregular_num%TYPE,
 pgrade l_rule.seat_grade%TYPE,
 plugnum l_rule.numberofluggage%TYPE,
 pfee l_rule.excess_fee%TYPE,
 psection l_rule.route_section%TYPE
)
IS
BEGIN
 INSERT INTO l_rule VALUES (pnum, pgrade, plugnum, pfee, psection);
 COMMIT;
 DBMS_OUTPUT.PUT_LINE('���ο� ��ȭ�� ������ �߰��Ǿ����ϴ�!');
 DBMS_OUTPUT.PUT_LINE(' ');
 DBMS_OUTPUT.PUT_LINE(psection || ' ' || pgrade || ' '|| '��ȭ�� ' ||plugnum||'���� ����� '|| pfee||'�Դϴ�');
END;

EXEC SE_LRULE_03(21,'�Ϲݼ�', 5, 250000,'������ ����');

DELETE FROM l_rule WHERE numberofluggage = 5;
-------------------------------------------------
--<<<<< ����üũ�� , ž�±� �߱�>>>>>
CREATE OR REPLACE PROCEDURE se_payrefund_01
(
 pserialnum payrefund.serialnumber%TYPE,
 pddate scplane.ddate%TYPE,
 plastname flightuser.lastname%TYPE,
 pfirstname flightuser.firstname%TYPE
)
IS
 EXISTS_NUM VARCHAR2(10);
 vserialnum payrefund.serialnumber%TYPE;
 vdairport scplane.dairport%TYPE;
 vaairport scplane.aairport%TYPE;
 vddate scplane.ddate%TYPE;
 vseatnumber payrefund.seatnumber%TYPE;
 vlastname flightuser.lastname%TYPE;
 vfirstname flightuser.firstname%TYPE;
 vgate scplane.gate%TYPE;
 vterminal scplane.terminal%TYPE;
 vuserid flightuser.userid%TYPE;
 vnum bpass.key%TYPE;
 vname VARCHAR2(200);
 vnumber scplane.asnum%TYPE;
BEGIN
 SELECT serialnumber, s.dairport, s.aairport, s.ddate, p.seatnumber, f.lastname, f.firstname, s.gate, terminal, f.userid, s.asnum
  INTO vserialnum, vdairport, vaairport, vddate, vseatnumber, vlastname, vfirstname, vgate, vterminal, vuserid, vnumber
 FROM flightuser f JOIN payrefund p ON f.userid = p.userid
                   JOIN scplane s ON p.renum = s.renum 
 WHERE serialnumber = pserialnum AND s.ddate = pddate AND
      f.lastname = plastname AND f.firstname = pfirstname;
 
 vnum := 'b'||vserialnum;
 vname:= vlastname||vfirstname;
 
 SELECT CASE WHEN EXISTS 
  (SELECT serialnumber FROM flightuser f JOIN payrefund p ON f.userid = p.userid
                                         JOIN scplane s ON p.renum = s.renum WHERE serialnumber = pserialnum AND s.ddate = pddate AND
                                                                                   f.lastname = plastname AND f.firstname = pfirstname)  THEN '1' ELSE '0' END 
 INTO EXISTS_NUM
 FROM DUAL;
 IF  EXISTS_NUM = '1'  THEN
  INSERT INTO bpass VALUES (vnum, vdairport, vaairport, vddate, vseatnumber, vname, vgate, vterminal, vuserid);  
--  COMMIT;
  DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
  DBMS_OUTPUT.PUT_LINE(' ');
  DBMS_OUTPUT.PUT_LINE('KOREAN AIR'||'        '|| 'ž�±�'|| '            '|| 'BOARDING PASS');
  DBMS_OUTPUT.PUT_LINE(' ');
  DBMS_OUTPUT.PUT_LINE('NAME   '||vname || '                  ' ||'NAME   '||vname  );
  DBMS_OUTPUT.PUT_LINE('                                    ' ||'FROM   '||vdairport );
  DBMS_OUTPUT.PUT_LINE('FLIGHT '||vnumber || '  ' ||TO_CHAR(vddate,'MM-DD')||' TO  ' ||vaairport||'        '|| 'TO     ' ||vaairport );
  DBMS_OUTPUT.PUT_LINE('                                    '||'DATE   '||TO_CHAR(vddate,'MM-DD'));
  DBMS_OUTPUT.PUT_LINE('DEP TIME   '||TO_CHAR(vddate,'HH24:MI'));
  DBMS_OUTPUT.PUT_LINE('BOARDING   '||TO_CHAR(vddate-30/(24*60),'HH24:MI')||'   '||'GATE  '||vgate||'         ' || 'SEAT  '||vseatnumber||' FLIGHT  '||vnumber );
  DBMS_OUTPUT.PUT_LINE(' ');
  DBMS_OUTPUT.PUT_LINE('   �װ��� ��� 10������ ž���� �����˴ϴ�.');
  DBMS_OUTPUT.PUT_LINE(' ');
  DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
  
  DBMS_OUTPUT.PUT_LINE(' ');
  DBMS_OUTPUT.PUT_LINE('ž�±� �߱޵Ǿ����ϴ�!');
 ELSE
  RAISE_APPLICATION_ERROR( -20008 , '����/���� ������ �����ϴ�. �ٽ� Ȯ���� �ּ���.');
 END IF;
EXCEPTION
WHEN NO_DATA_FOUND THEN
    RAISE_APPLICATION_ERROR(-20001,'����/���� ������ �����ϴ�. �ٽ� Ȯ���� �ּ���.');
END;

SELECT *
FROM payrefund;

EXEC SE_PAYREFUND_01 (1,TO_DATE('2024-03-20 09:30', 'YYYY-MM-DD HH24:MI'),'Hong', 'GilDong');
EXEC SE_PAYREFUND_01 (2,TO_DATE('2024-03-20 10:45', 'YYYY-MM-DD HH24:MI'),'Hong', 'GilDong');
-------------------------------------------------------------------------------------

----------------------------------����-------------------------------------
----------------------------------����-------------------------------------
----------------------------------����-------------------------------------
----------------------------------����-------------------------------------
CREATE SEQUENCE customercseq
START WITH 6;
CREATE SEQUENCE flight_mealseq
START WITH 4;
CREATE SEQUENCE tr_dc_giftcard
START WITH 2;
------------
-----------


-- ���� ���� ��ȸ
-- ���� ���� ��ȸ

EXEC dc_customerc_01(10);

CREATE OR REPLACE PROCEDURE dc_customerc_01
(
    pQ_num NUMBER
)
IS
    vE_check VARCHAR2(20);
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM customerc
    WHERE Q_num = pQ_NUM;

    IF v_count = 0 THEN
        DBMS_OUTPUT.PUT_LINE('�ش� ��ȣ�� �������� �ʽ��ϴ�.');
        ELSE
            FOR vrow IN (SELECT *   
                        FROM customerc
                        WHERE Q_num = pQ_NUM)
            LOOP
                IF  vrow.e_check =1 THEN 
                      vE_check  :='�㰡';
                ELSE 
                    vE_check :='�ź�';
                END IF;
            
                DBMS_OUTPUT.PUT_LINE('Q_num: ' || vrow.Q_num);
                DBMS_OUTPUT.PUT_LINE('Type: ' || vrow.type);
                DBMS_OUTPUT.PUT_LINE('Field: ' || vrow.Field);
                DBMS_OUTPUT.PUT_LINE('First Name: ' || vrow.F_NAME);
                DBMS_OUTPUT.PUT_LINE('Last Name: ' || vrow.L_NAME);
                DBMS_OUTPUT.PUT_LINE('Phone Number: ' || vrow.P_NUM);
                DBMS_OUTPUT.PUT_LINE('Email: ' || vrow.Email);
                DBMS_OUTPUT.PUT_LINE('Title: ' || vrow.title);
                DBMS_OUTPUT.PUT_LINE('Content: ' || vrow.content);
                DBMS_OUTPUT.PUT_LINE('SP Number: ' || vrow.SP_NUM);
                DBMS_OUTPUT.PUT_LINE('Renumber: ' || vrow.renum);
                DBMS_OUTPUT.PUT_LINE('E Check: ' ||vE_check );
                DBMS_OUTPUT.PUT_LINE('City Arr: ' || vrow.city_arr);
                DBMS_OUTPUT.PUT_LINE('Start City: ' || vrow.start_city);
                DBMS_OUTPUT.PUT_LINE('Arrival Date: ' || TO_CHAR(vrow.arr_date, 'YYYY-MM-DD'));
                DBMS_OUTPUT.PUT_LINE('Flights: ' || vrow.Flights);
            END LOOP;
        END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
         DBMS_OUTPUT.PUT_LINE('�ش� ��ȣ�� �������� �ʽ��ϴ�.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('������ �߻��߽��ϴ�: ' );
END;

-- ���� ���� �Է�

CREATE OR REPLACE PROCEDURE dc_customerc_02
(
        ptype VARCHAR2,    pField VARCHAR2,
    pF_NAME VARCHAR2,    pL_NAME VARCHAR2,    pP_NUM VARCHAR2,
    pEmail VARCHAR2,    ptitle VARCHAR2,    pcontent varchar2,
    pSP_NUM VARCHAR2,    prenum VARCHAR2,    pe_check NUMBER,
    pcity_arr VARCHAR2,    pstart_city VARCHAR2,    parr_date DATE ,
    pFlights VARCHAR2
)
IS
    vnum number ;
BEGIN
     vnum := customercseq.NEXTVAL ;

    INSERT INTO customerc
    VALUES(  vnum  ,
    ptype ,pField ,pF_NAME ,pL_NAME ,pP_NUM ,pEmail ,ptitle ,pcontent ,pSP_NUM ,prenum ,
    pe_check ,pcity_arr ,pstart_city ,parr_date  ,pFlights  );

--EXCEPTION
END;


--���Ǹ��� ���� -�Է�
BEGIN 
    dc_customerc_02(
    'Ī��', '���׼���', '��', '����', '(82) 10-1234-5678',
    'example@email.com', 'Ī���ؿ� ~', '��� �ʹ� ģ���մϴ�',
    '1232-3456-7890-1323', '34534534', 1,
    '����', '����', TO_DATE('2024-03-10', 'YYYY-MM-DD'),
    'KE123'
    );
    END;
select * from customerc;
-- ���� ���� ����

CREATE OR REPLACE PROCEDURE dc_customerc_03
(
     pQ_num NUMBER ,    ptype VARCHAR2,    pField VARCHAR2,
    pF_NAME VARCHAR2,    pL_NAME VARCHAR2,    pP_NUM VARCHAR2,
    pEmail VARCHAR2,    ptitle VARCHAR2,    pcontent varchar2,
    pSP_NUM VARCHAR2,    prenum VARCHAR2,    pe_check NUMBER,
    pcity_arr VARCHAR2,    pstart_city VARCHAR2,    parr_date DATE ,
    pFlights VARCHAR2
)
IS
    v_count NUMBER;
BEGIN

    SELECT COUNT(*)
    INTO v_count
    FROM customerc
    WHERE Q_NUM = pQ_num;
    IF v_count = 0 THEN
        DBMS_OUTPUT.PUT_LINE('�ش��ϴ� ���ڵ带 ã�� �� �����ϴ�.');
        ELSE
            UPDATE customerc
            SET  
            type= ptype ,Field = pField ,F_NAME = pF_NAME ,L_NAME = pL_NAME ,P_NUM =pP_NUM 
            ,Email= pEmail ,title = ptitle ,content = pcontent ,SP_NUM = pSP_NUM ,renum = prenum ,
            e_check = pe_check ,city_arr = pcity_arr ,start_city = pstart_city 
            ,arr_date = parr_date  ,Flights = pFlights
            WHERE Q_NUM = pQ_NUM;
    END IF;
--EXCEPTION
END;

--���� ���� ���� -�Է�

CALL dc_customerc_03(
     1,   'Ī��',    '���׼���',
     '��',   'ȣ��',    '(82) 10-1234-5678',
     'example@email.com',    'Ī���ؿ� ~',    '��� �ʹ� ģ���մϴ�',
   '1232-3456-7890-1323',    '34534534',    1,
     '����',     '����',     TO_DATE('2024-03-10', 'YYYY-MM-DD'),
    'KE123'
);



END;

-- ���� ���ν���
CREATE OR REPLACE PROCEDURE dc_customerc_04
(
    pq_num NUMBER
)
IS
    v_count NUMBER;
BEGIN
    
    SELECT COUNT(*)
    INTO v_count
    FROM customerc
    WHERE Q_NUM = pq_num;

   
    IF v_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20002, '�ش� ��ȣ�� �������� �ʽ��ϴ�..');
    ELSE
       
        DELETE FROM customerc
        WHERE Q_NUM = pq_num;
        
        DBMS_OUTPUT.PUT_LINE('���ڵ尡 �����Ǿ����ϴ�.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('������ �߻��߽��ϴ� ' );
END;


-- ���Ǹ��� DELETE -�Է�

EXEC dc_customerc_04(2);






--�⳻�� ��ȸ ���� 



CREATE OR REPLACE PROCEDURE dc_flight_meal_01
(
    pmeal_code NUMBER
)
IS
    v_count NUMBER;
BEGIN
  
    SELECT COUNT(*)
    INTO v_count
    FROM flight_meal
    WHERE meal_code = pmeal_code;

   
    IF v_count = 0 THEN
         DBMS_OUTPUT.PUT_LINE('�ش� ��ȣ�� �������� �ʽ��ϴ�.');
    ELSE
       
        FOR vrow IN (SELECT *
                     FROM flight_meal
                     WHERE meal_code = pmeal_code)
        LOOP
            DBMS_OUTPUT.PUT_LINE('meal_code: ' || vrow.meal_code);
            DBMS_OUTPUT.PUT_LINE('menu: ' || vrow.menu);
            DBMS_OUTPUT.PUT_LINE('MENU_PDF: vrow.menu_pdf' );
        END LOOP;
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('������ �߻��߽��ϴ� ' );
END;

EXEC dc_flight_meal_01(4);

--�⳻�� �ۼ� ���� 



CREATE OR REPLACE PROCEDURE dc_flight_meal_02
(
    pmenu VARCHAR2
)
IS
    vmeal_code flight_meal.meal_code%TYPE;
BEGIN

    SELECT flight_mealseq.NEXTVAL INTO vmeal_code FROM dual;

    INSERT INTO flight_meal(meal_code, menu) VALUES(vmeal_code, pmenu);
EXCEPTION
    WHEN OTHERS THEN
        -- ���� �߻� �� �޽��� ���
        DBMS_OUTPUT.PUT_LINE('������ �߻��߽��ϴ� ' );
END;


EXECUTE dc_flight_meal_02('���̽�ũ��');
--�⳻�� ��������


CREATE OR REPLACE PROCEDURE dc_flight_meal_03
(
     pmeal_code flight_meal.meal_code%TYPE 
     ,pmenu VARCHAR2
    )
IS
    vcount number;
BEGIN
  SELECT COUNT(*)
  INTO vcount
  FROM flight_meal
  WHERE  meal_code = pmeal_code;
  
  IF vcount =0 THEN
  DBMS_OUTPUT.PUT_LINE('�ش� ��ȣ�� �������� �ʽ��ϴ�.');
  ELSE
    
                UPDATE flight_meal
                SET  
                menu =pmenu
                WHERE meal_code = pmeal_code;
    END IF;
    --EXCEPTION
END;

EXECUTE dc_flight_meal_03(1,'���̽�ũ��');


--�⳻�� ��������


CREATE OR REPLACE PROCEDURE dc_flight_meal_04
(
    pmeal_code flight_meal.meal_code%TYPE
)
IS
    vcount number;
BEGIN
  SELECT COUNT(*)
  INTO vcount
  FROM flight_meal
  WHERE  meal_code = pmeal_code;
  
    IF VCOUNT = 0 THEN
     DBMS_OUTPUT.PUT_LINE('�ش� ��ȣ�� �������� �ʽ��ϴ�.');
    
    ELSE
        DELETE FROM flight_meal 
        WHERE meal_code = pmeal_code;
    END IF;
  
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('������ �߻��߽��ϴ� ');
END;


exec dc_flight_meal_04(4);


--����Ʈ ī�� ��������








ALTER TABLE payrefund ADD PIN_NUM NUMBER(6) NOT NULL;

-- ī�� �ݾ� ������Ʈ
CREATE SEQUENCE tr_dc_giftcard;

drop trigger tr_dc_giftcard_01;
CREATE OR REPLACE TRIGGER tr_dc_giftcard_01
BEFORE INSERT ON payrefund
FOR EACH ROW
DECLARE 
    notenough EXCEPTION;
    vamount giftcard.AMOUNT%TYPE;
    vPIN_NUM giftcard.pin_num%TYPE;
BEGIN

    IF :NEW.pmethod = '����Ʈī��' THEN
    
    SELECT AMOUNT,PIN_NUM INTO vamount,VPIN_NUM
    FROM GIFTCARD 
    WHERE  CARD_NUM = :NEW.GIFTCARDNUMBER;
            IF vPIN_NUM = :NEW.PIN_NUM   THEN 
            DBMS_OUTPUT.PUT_LINE('�ɹ�ȣ ��ġ!');
            
                        IF vamount<:NEW.cost   THEN
                            RAISE_APPLICATION_ERROR(-20002, '�ܾ��� �����մϴ�.');
                          
                            
                        ELSE
                            UPDATE GIFTCARD
                            SET
                            AMOUNT = vamount - :NEW.cost 
                            WHERE CARD_NUM = :NEW.GIFTCARDNUMBER;
                            DBMS_OUTPUT.PUT_LINE( '����Ʈī����Ϸ� �̿��� �ܾ� : '|| VAMOUNT);
                        END IF;
            ELSE
                RAISE_APPLICATION_ERROR(-20000, '�ɹ�ȣ ����ġ.');
               
            END IF;
    END IF;
--EXCEPTION

END;




create or replace procedure mk_payrefund_01
(
    pddate varchar2,
    pdairport scplane.dairport%type,
    paairport scplane.aairport%type,
    pseatnum payrefund.seatnumber%type default null,
    pnum number,
    pflight payrefund.flight%type,
    ppmethod payrefund.pmethod%type,
    pnluggage payrefund.nluggage%type,
    PCARDNUM PAYrefund.giftcardnumber%type default null,
    PPIN_NUMBER giftcard.pin_num%TYPE
)

is
    vrenum scplane.renum%type;
    vcost payrefund.cost%type;
    vpnum payrefund.seatnumber%type;
    occupfiederror exception; 
    nocard exception; 
    cardnumc payrefund.giftcardnumber%type;
begin
     select 
         count(seatnumber)  into vpnum 
         from payrefund p ,scplane s where p.renum = s.renum and pseatnum=p.seatnumber ;
     if  vpnum !=0 then
         raise occupfiederror;
        end if;
        select count(card_num) into cardnumc from giftcard ;
         if  cardnumc !=1  and ppmethod = '����Ʈī��' then
         raise  nocard ;
        end if;
    select renum  into vrenum 
    from scplane s where to_char(s.ddate ,'YYMMDDhh24mi') =pddate
    and substr(s.dairport,instr(s.dairport,'.')+1) = pdairport 
    and  substr(s.aairport,instr(s.aairport,'.')+1) = paairport ;
    select d.fare ������� into vcost 
    from scplane s,dfare d 
where s.renum=vrenum and d.peak = CASE
        WHEN to_char(s.ddate, 'yymmdd') = to_date('240101','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_date('240208','yymmdd') AND to_date('240213','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_date('240224','yymmdd') AND to_date('240302','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_date('240503','yymmdd') AND to_date('240506','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') = to_date('240515','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_Date('240606','yymmdd') AND to_date('240608','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_Date('240727','yymmdd') AND to_date('240824','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_Date('240913','yymmdd')AND to_Date('240919','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') BETWEEN to_Date('241003','yymmdd') AND to_Date('241005','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') = to_Date('241009','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') = to_Date('241225','yymmdd') THEN '������'
        WHEN to_char(s.ddate, 'yymmdd') = to_Date('241231','yymmdd') THEN '������'
        else '�����'
        end
    and d.discount = '����' and substr(d.route,instr(d.route,'/')+1,instr(d.route,'-')-instr(d.route,'/')-1)=pdairport and substr(d.route,instr(d.route,'/',-1)+1)=paairport and 
      d.timezone = case when to_char( s.ddate , 'hh24mi') >= '1500' then '�Ϲ�' else '��ȣ' end  and d.wknddy  = case to_char(s.ddate , 'dy') when '��' then '����' when 'ȭ' then '����' when '��' then '����' when '��' then '����' else '�ָ�' end;

    insert into payrefund  values
    (mk_payrefundseq.nextval, '����', ppmethod , pflight, pseatnum ,sysdate , pnluggage ,vcost, 0 ,'user001', vrenum, pcardnum,PPIN_NUMBER);
    dbms_output.put_line('������ �Ϸ�Ǿ����ϴ�.');
    exception
        when no_data_found then
        dbms_output.put_line('���డ���� ������ �����ϴ�');
        when occupfiederror then
         dbms_output.put_line('�ش� �¼��� �̹� ����Ǿ��ֽ��ϴ�.');
          when nocard then
         dbms_output.put_line('�Է��Ͻ� ����Ʈī�尡 �����ϴ�.');
end;

exec mk_payrefund_01('2403200930','GMP','CJU','20E',1,'����','����Ʈī��',1, '1234-5678-9012-3456',123456);
exec mk_payrefund_01('2403200930','GMP','CJU','20E',1,'����','����Ʈī��',1, '1234-5678-9012-3456',126556);

SELECT * FROM GIFTCARD;
select * from payrefund;
SELECT * FROM MTRACKING;
SELECT * FROM CARD_USE;
delete payrefund where 1=1;
DELETE CARD_USE WHERE 1=1;


exec mk_payrefund_01('2403200930','GMP','CJU','20E',1,'����','����Ʈī��',1, '1234-5678-9012-3456',123456);
exec mk_payrefund_01('2403200930','GMP','CJU','20E',1,'����','����Ʈī��',1, '1234-5678-9012-3456',126556);    -- �ɳѹ� ����ġ

--------------------------------------------------------------------------------------------
---------------------------------------���---------------------------------------
---------------------------------------���---------------------------------------
---------------------------------------���---------------------------------------
---------------------------------------���---------------------------------------
---------------------------------------���---------------------------------------
-- mtracking insert / userdetail totalmile, clubgrade, ���į Ŭ�� period update  
-- EXEC da_Mtracking_03(500000,'�����װ�','����','user001') ;

-- mtracking insert / userdetail totalmile, clubgrade, ���į Ŭ�� period update  
-- EXEC da_Mtracking_03(500000,'�����װ�','����','user001') ;
EXEC pd_da_Rfamily_01('��','user001','user001');
-- Rfamily insert / userdetail update family_id 
CREATE OR REPLACE PROCEDURE pd_da_Rfamily_01
(
    pRelation Rfamily.relation%TYPE,
    pfamily_id Rfamily.family_id%TYPE,
    puserid Rfamily.userid%TYPE
)
IS
    vfamily_id VARCHAR2(20);
BEGIN
    vfamily_id := '$' || pfamily_id ;
    INSERT INTO Rfamily (relation,status, family_id, userid) VALUES(pRelation,'������', vfamily_id ,puserid); 
    
    UPDATE userdetail
    SET family_id = vfamily_id
    WHERE userid = puserid; 
    
    COMMIT;
END;


-- EXEC pd_da_Rfamily_03(1,'$user002');
-- ���� ���� �߰� �Ϸ� �� ������ ������ �� ���� 1. ���� 2. ��ȸ  / ������ id -> ������ OR �Ϸ� || ��ȸ�� ���� id �� ���  
CREATE OR REPLACE PROCEDURE pd_da_Rfamily_03
(
    pSearchCondition NUMBER 
    , psearchWord VARCHAR2
    , pupdateWord VARCHAR2 DEFAULT NULL
)
IS
    vsql VARCHAR2(100);
    vcur SYS_REFCURSOR;
    vrow Rfamily%ROWTYPE;
BEGIN
    IF pSearchCondition = 1 THEN
        vsql := 'UPDATE Rfamily ' ;
        vsql := vsql || 'SET status = :pupdateWord' ;
        vsql := vsql || 'WHERE family_id = :psearchWord' ;    
    ELSIF pSearchCondition = 2 THEN
        vsql := 'SELECT * ' ;
        vsql := vsql || ' FROM Rfamily '  ;
        vsql := vsql || ' WHERE family_id = :psearchWord' ;
    END IF;
    
    IF pupdateWord IS NULL THEN
        OPEN vcur FOR vsql USING psearchWord;
        LOOP
            FETCH vcur INTO vrow;
            EXIT WHEN vcur%NOTFOUND;
            DBMS_OUTPUT.PUT_LINE( vrow.family_id || ' ' || vrow.userid || ' ' || vrow.relation || ' ' || vrow.status );
        END LOOP;
        CLOSE vcur;
    ELSIF pupdateWord IS NOT NULL THEN
        OPEN vcur FOR vsql USING psearchWord, pupdateWord;
        LOOP
            FETCH vcur INTO vrow;
            EXIT WHEN vcur%NOTFOUND;
            DBMS_OUTPUT.PUT_LINE( vrow.family_id || ' ' || vrow.userid || ' ' || vrow.relation || ' ' || vrow.status );
        END LOOP;
        CLOSE vcur;    
    END IF;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20001, '> Rfamily data not found...');
END;

-- ���� ���� ���ν��� 
CREATE OR REPLACE PROCEDURE pd_da_Rfamily_04
(
    puserid Rfamily.userid%TYPE
)
IS
BEGIN
    DELETE FROM Rfamily
    WHERE userid = puserid;
END;

-- Mtracking ������ 
DROP SEQUENCE seq_mtracking;

CREATE SEQUENCE seq_mtracking
INCREMENT BY 1 
START WITH 1 
MINVALUE 1 
MAXVALUE 9999 
NOCYCLE
NOCACHE
NOORDER;

-- mtracking insert / userdetail totalmile, clubgrade, ���į Ŭ�� period update  
-- EXEC da_Mtracking_03(5100000,'�����װ�','����','user001') ;
-- EXEC da_Mtracking_03(5100000,'�����װ�','�Һ�','user001') ;

CREATE OR REPLACE PROCEDURE da_Mtracking_03 -- EXEC da_Mtracking_03(���ϸ�����, '�װ����̸�', '���� �Ǵ� �Һ�' , 'userid' ) 
(
    pMileage Mtracking.amount_mileage%TYPE,
    pAirLineType Mtracking.airline_type%TYPE,
    p_sore Mtracking.spendorearned%TYPE,
    p_Userid Mtracking.userid%TYPE
)
IS
 curtime DATE;
 vSum NUMBER;
 vamount_earned NUMBER;
 vamount_consume NUMBER;
 vamount_total NUMBER;
 vride NUMBER;
 vGrade VARCHAR2(40);
 dat DATE;
 vUserid VARCHAR2(40);
BEGIN
    curtime := TO_DATE(SYSDATE, 'yyyy-mm-dd HH24:MI:SS');
    INSERT INTO MTracking VALUES (seq_mtracking.NEXTVAL, curtime, pMileage, pAirLineType, p_sore, p_Userid);
    
    SELECT SUM(amount_mileage) into vamount_earned -- �� ����� ���ϸ��� �Ѱ� 
    FROM Mtracking 
    WHERE userid = p_Userid AND spendorearned LIKE '%����%';
    
    SELECT SUM(amount_mileage) into vamount_consume -- �� ����� ���ϸ��� �Ѱ� 
    FROM Mtracking 
    WHERE userid = p_Userid AND spendorearned LIKE '%�Һ�%';
    
    SELECT COUNT(*) INTO vride
    FROM Mtracking
    WHERE userid = p_Userid;
    
    UPDATE userdetail
    SET totalmile = NVL(vamount_earned,0) - NVL(vamount_consume,0)
    WHERE userid = p_Userid;
    
    SELECT usergrade into vGrade
    FROM userdetail
    WHERE userid = p_Userid;
    
--     ��� üũ 
    IF vamount_earned >= 50000 OR vride >= 40 THEN 
        IF vamount_earned >= 500000 AND vamount_earned <= 999999 THEN
            vGrade := '���į �����̾� Ŭ��';
        ELSIF vamount_earned >= 1000000 THEN
            vGrade := '�и��� ���Ϸ� Ŭ��';
        ELSIF vGrade = '���į Ŭ��' AND vamount_earned <= 499999 THEN
            SELECT grade_date into dat
            FROM userdetail
            WHERE userid = p_Userid;
            IF TO_DATE(SYSDATE, 'YYYY/MM/DD') - TO_DATE(dat, 'YYYY/MM/DD') > 730 THEN 
                vGrade := '��ī���н� Ŭ��';
            END IF;
        ELSE 
        vGrade := '���į Ŭ��';
        UPDATE userdetail
        SET grade_date = TO_DATE(SYSDATE, 'YYYY/MM/DD')
        WHERE userid = p_Userid;
        END IF;
    END IF;
    
    UPDATE userdetail
    SET usergrade = vGrade
    WHERE userid = p_Userid;
    
    EXCEPTION 
        WHEN no_data_found THEN
            ROLLBACK;
    COMMIT;
END;


insert into userdetail (userid) values('user001');

SELECT *
FROM userdetail;

select sysdate from dual;
select to_char( sysdate , 'yyyy"��" mm"��" hh24"��" mi"��"') from dual; 
SELECT * FROM SCPLANE;
SELECT * FROM FLIGHTUSER;
select * from adminstrator;
select * from dfare;
select * from ifare;
select * from notice;
select * from airplane;
SELECT * FROM S_Grade;
SELECT * FROm Rfamily;
SELECT * FROM userdetail;
SELECT * fROM Mtracking;
select * from CARD_USE;