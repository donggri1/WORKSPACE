CREATE TABLE Member (
    user_id VARCHAR2(100) NOT NULL,
    user_name VARCHAR2(100) NOT NULL,
    user_email_address VARCHAR2(100) NOT NULL,
    user_birthday DATE DEFAULT sysdate NOT NULL,
    user_nickname VARCHAR2(100) NOT NULL,
    user_password VARCHAR2(100) NOT NULL
);

COMMENT ON COLUMN Member.user_id IS '��ǥ�ڸ��ĺ���ID';
COMMENT ON COLUMN Member.user_name IS 'ȸ���� �̸�';
COMMENT ON COLUMN Member.user_email_address IS 'ȸ���� �̸��� �ּ�';
COMMENT ON COLUMN Member.user_birthday IS 'ȸ���� �������';
COMMENT ON COLUMN Member.user_nickname IS 'ȸ���� �г���';
COMMENT ON COLUMN Member.user_password IS 'ȸ���� ��й�ȣ';

CREATE TABLE Vote (
    user_id VARCHAR2(100) NOT NULL,
    SURVEY_NUM NUMBER NOT NULL,
    COL_NUMBER NUMBER(1) NOT NULL,
    CHOICE_NUM NUMBER(1) DEFAULT 1 NOT NULL
);

CREATE TABLE Survey (
    SURVEY_NUM NUMBER NOT NULL,
    COL_NUMBER NUMBER(1) NOT NULL,
    TITLE VARCHAR2(50 CHAR) NOT NULL,
    START_DATE DATE DEFAULT SYSDATE NOT NULL,
    END_DATE DATE DEFAULT SYSDATE + 7 NOT NULL,
    WRITE_DATE DATE DEFAULT SYSDATE NOT NULL
);

CREATE TABLE Edit (
    SURVERY_NUM NUMBER NOT NULL,
    admin_id VARCHAR2(100) NOT NULL,
    COL_NUMBER NUMBER(1) NOT NULL
);

CREATE TABLE Administrator (
    admin_id VARCHAR2(100) NOT NULL,
    name VARCHAR2(100) NOT NULL,
    emailAddress VARCHAR2(100) NOT NULL,
    birthdate DATE DEFAULT sysdate NOT NULL,
    nickname VARCHAR2(80) NOT NULL,
    password VARCHAR2(100) NOT NULL
);

CREATE TABLE Item (
    CHO_NUM VARCHAR2(100) NOT NULL,
    SURVEY_NUM NUMBER NOT NULL,
    COL_NUMBER NUMBER(1) NOT NULL,
    CHOICE1 VARCHAR2(100) NOT NULL
);

ALTER TABLE Member ADD CONSTRAINT PK_MEMBER PRIMARY KEY (user_id);
ALTER TABLE Vote ADD CONSTRAINT PK_VOTE PRIMARY KEY (user_id, SURVEY_NUM, COL_NUMBER);
ALTER TABLE Survey ADD CONSTRAINT PK_SURVEY PRIMARY KEY (SURVEY_NUM, COL_NUMBER);
ALTER TABLE Edit ADD CONSTRAINT PK_EDIT PRIMARY KEY (SURVERY_NUM, admin_id, COL_NUMBER);
ALTER TABLE Administrator ADD CONSTRAINT PK_ADMINISTRATOR PRIMARY KEY (admin_id);
ALTER TABLE Item ADD CONSTRAINT PK_ITEM PRIMARY KEY (CHO_NUM, SURVEY_NUM, COL_NUMBER);

ALTER TABLE Vote ADD CONSTRAINT FK_Member_TO_Vote_1 FOREIGN KEY (user_id) REFERENCES Member (user_id);
ALTER TABLE Vote ADD CONSTRAINT FK_Survey_TO_Vote_1 FOREIGN KEY (SURVEY_NUM,COL_NUMBER) REFERENCES Survey (SURVEY_NUM,COL_NUMBER);
--ALTER TABLE Vote ADD CONSTRAINT FK_Survey_TO_Vote_2 FOREIGN KEY (COL_NUMBER) REFERENCES Survey (COL_NUMBER);
ALTER TABLE Edit ADD CONSTRAINT FK_Survey_TO_Edit_1 FOREIGN KEY (SURVERY_NUM,COL_NUMBER) REFERENCES Survey (SURVEY_NUM,COL_NUMBER);
--ALTER TABLE Edit ADD CONSTRAINT FK_Survey_TO_Edit_2 FOREIGN KEY (SURVEY_NUM,COL_NUMBER) REFERENCES Survey (SURVEY_NUM,COL_NUMBER);
ALTER TABLE Edit ADD CONSTRAINT FK_Administrator_TO_Edit_1 FOREIGN KEY (admin_id) REFERENCES Administrator (admin_id);
ALTER TABLE Item ADD CONSTRAINT FK_Survey_TO_Item_1 FOREIGN KEY (SURVEY_NUM,COL_NUMBER) REFERENCES Survey (SURVEY_NUM,COL_NUMBER);
--ALTER TABLE Item ADD CONSTRAINT FK_Survey_TO_Item_2 FOREIGN KEY (COL_NUMBER) REFERENCES Survey (COL_NUMBER);

 ALTER TABLE vote ADD CONSTRAINT CK_vote_choice_num 
    CHECK (choice_num BETWEEN 1
    AND COL_NUMBER
    );   
INSERT INTO Member VALUES ('kang0821', '�����', 'aaa123@aaa.com', TO_DATE('1993-08-21', 'YYYY-MM-DD'), '�̻��ؾ�', 'aaaa1234!');
INSERT INTO Member VALUES ('pokemonmaster1', '������', 'gonnabe@poke.com', TO_DATE('1988-01-29', 'YYYY-MM-DD'), '���α�', 'bbbb4567@');
INSERT INTO Member VALUES ('water02', '�̽���', 'swimisgood@poke.com', TO_DATE('1999-09-23', 'YYYY-MM-DD'), '���̸�', 'CcAa7896%$');
INSERT INTO Member VALUES ('rock55', '����', 'ilovewomen@poke.com', TO_DATE('1994-07-09', 'YYYY-MM-DD'), '��ī��', 'Whdkdy19684$%@');
INSERT INTO Member VALUES ('purple66', '����', 'qqq444@rocket.com', TO_DATE('1981-05-19', 'YYYY-MM-DD'), '������', 'eocndgo@@1234');

SELECT *
FROM MEMBER;


UPDATE member
SET 
    USER_NAME = '�̵���'
    ,USER_EMAIL_ADDRESS = 'aaa123@BBB.com'
    ,USER_BIRTHDAY ='93/08/21'
    ,USER_NICKNAME ='�Ḹ��'
    ,USER_PASSWORD = 'CcAa7896%$'
WHERE USER_ID = 'kang0821';

select *
from item
;

UPDATE Item
SET CHOICE1 = '2000���' 
WHERE CHO_NUM = 1 AND SURVEY_NUM =2;
select title , choice1
FROM item i JOIN Survey s  ON  i.survey_num = s.survey_num
AND s.survey_num = 1;

ALTER TABLE Member 
ADD CONSTRAINT chk_email_format 
CHECK (REGEXP_LIKE(user_email_address, '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'));

ALTER TABLE Member 
ADD CONSTRAINT chk_id_format 
CHECK (REGEXP_LIKE(user_id, '^[a-zA-Z0-9_-]{1,20}$'));

ALTER TABLE Administrator ADD CONSTRAINT idconstr CHECK(    
admin_id LIKE '[a-zA-Z0-9_-]%' AND 
admin_id NOT LIKE '#%' AND
LENGTH(admin_id) <= 20);

ALTER TABLE Member 
ADD CONSTRAINT chk_password_format 
CHECK (REGEXP_LIKE(user_password, '^[a-zA-Z0-9!@#$%^&*()_+-=;:{}|`~<>,.?/]{8,20}$'));


INSERT INTO Survey VALUES ( 1,5,'�����ϴ� ����', '2023-08-19','2023-08-22','2023-08-19');
INSERT INTO Item VALUES (1,1,5,'������');
INSERT INTO Item VALUES (2,1,5,'�����');
INSERT INTO Item VALUES (3,1,5,'�ܽ���');
INSERT INTO Item VALUES (4,1,5,'��ī');
INSERT INTO Item VALUES (5,1,5,'�Ǵ�');

INSERT INTO Survey VALUES ( 2,5,'����⵵ ����', '2023-10-10','2023-10-21','2023-10-9');
INSERT INTO Item VALUES (1,2,5,'1970���');
INSERT INTO Item VALUES (2,2,5,'1980���');
INSERT INTO Item VALUES (3,2,5,'1990���');
INSERT INTO Item VALUES (4,2,5,'2000���');
INSERT INTO Item VALUES (5,2,5,'2010���');


INSERT INTO Survey VALUES ( 3,2,'��������', '2023-10-11','2023-10-13','2023-10-11');
INSERT INTO Item VALUES (1,3,2,'����');
INSERT INTO Item VALUES (2,3,2,'����');

INSERT INTO Survey VALUES ( 4,4,'������ �ְ�ȯ��', '2024-01-31','2024-03-15','2024-01-31');
INSERT INTO Item VALUES (1,4,4,'�ܵ�����');
INSERT INTO Item VALUES (2,4,4,'����Ʈ');
INSERT INTO Item VALUES (3,4,4,'����');
INSERT INTO Item VALUES (4,4,4,'�����');


INSERT INTO Survey VALUES ( 5,4,'��������', '2024-02-28','2024-03-07','2024-02-28');
INSERT INTO Item VALUES (1,5,4,'ȸ���');
INSERT INTO Item VALUES (2,5,4,'�����');
INSERT INTO Item VALUES (3,5,4,'������');
INSERT INTO Item VALUES (4,5,4,'�л�');

INSERT INTO Vote VALUES ('kang0821', 1, 5, 1);
INSERT INTO Vote VALUES ('ASDFADSF', 2, 3, 1);
INSERT INTO Vote VALUES ('kang0821', 1, 5, 1);
INSERT INTO Vote VALUES ('kang0821', 1, 5, 1);



INSERT INTO VOTE VALUES ('kang0821', 1, 5,1);
INSERT INTO VOTE VALUES ('water02', 1,5, 1);
INSERT INTO VOTE VALUES ('rock55', 1, 5,2);
INSERT INTO VOTE VALUES ('purple66', 1,5, 1);
INSERT INTO VOTE VALUES ('pokemonmaster1', 1,5, 2);

INSERT INTO VOTE VALUES ('kang0821', 2, 5,3);
INSERT INTO VOTE VALUES ('water02', 2,5, 1);
INSERT INTO VOTE VALUES ('rock55', 2,5, 2);
INSERT INTO VOTE VALUES ('purple66', 2,5, 1);

INSERT INTO VOTE VALUES ('kang0821', 3,2,2);
INSERT INTO VOTE VALUES ('water02', 3, 2,1);
INSERT INTO VOTE VALUES ('rock55', 3,2, 2);
INSERT INTO VOTE VALUES ('purple66', 3,2, 2);
INSERT INTO VOTE VALUES ('pokemonmaster1', 3,2, 2);

INSERT INTO VOTE VALUES ('water02', 4, 4,4);
INSERT INTO VOTE VALUES ('rock55', 4,4, 4);
INSERT INTO VOTE VALUES ('purple66', 4,4, 3);
INSERT INTO VOTE VALUES ('pokemonmaster1', 4,4, 1);

INSERT INTO VOTE VALUES ('kang0821', 5,4, 1);
INSERT INTO VOTE VALUES ('rock55', 5,4, 4);
INSERT INTO VOTE VALUES ('purple66', 5,4, 1);

select *
FROM survey;


decode((select sign(start_date - end_date) from survey) ,


select decode(sign(start_date - end_date),-1,'������','�Ϸ�')
FROM survey
WHERE survey_num =1 ;

SELECT count(*)
FROM VOTE
WHERE survey_num=1 AND choice_num =1;

FROM VOTE JOIN survey ON


SELECT count(*)
FROM VOTE
WHERE survey_num=1 AND choice_num =1;

SELECT choice_num,count(*)
FROM VOTE
WHERE survey_num=1 
group by choice_num ;



SELECT LPAD(' ', count(*)+1, '#')  
FROM VOTE
WHERE survey_num=1 
group by choice_num ;















SELECT
    ����, �ۼ���, ������, ������, �׸��,
    LISTAGG(CHOICE1, ', ') WITHIN GROUP (ORDER BY CHOICE1) AS �׸�
FROM (
    SELECT
        s.TITLE AS ����,
        s.WRITE_DATE AS �ۼ���,
        s.START_DATE AS ������,
        s.END_DATE AS ������,
        s.COL_NUMBER AS �׸��,
        i.CHOICE1 AS CHOICE1
    FROM 
        Survey s 
    JOIN 
        vote v ON s.SURVEY_NUM = v.SURVEY_NUM
    JOIN 
        MEMBER m ON m.USER_ID = v.USER_ID
    JOIN 
        Item i ON i.SURVEY_NUM = s.SURVEY_NUM
    GROUP BY 
        s.TITLE, s.WRITE_DATE, s.START_DATE, s.END_DATE, s.COL_NUMBER, i.CHOICE1
)
GROUP BY 
    ����, �ۼ���, ������, ������, �׸��;


SELECT title "����", '������' �ۼ���, write_date �ۼ���,  start_date ������, end_date ������
    , DECODE(SIGN(end_date - TRUNC(SYSDATE)),-1,'����','������') ���� 
    , s.col_number �׸��
    , LISTAGG(CHOICE1, ', ') WITHIN GROUP (ORDER BY CHOICE1) AS �׸�
    ,(SELECT COUNT(*) FROM vote v WHERE v.survey_num = 1) �����ڼ�
--    , LPAD(' ', 5- (SELECT COUNT(*)FROM vote v WHERE v.survey_num = 1 GROUP BY choice_num ) , '*')
FROM survey s JOIN item i ON s.survey_num = i.survey_num
WHERE s.survey_num =1
GROUP BY title, write_date, start_date, end_date, s.col_number ;


SELECT choice_num 
        , LPAD(' ', count(*)+1, '#')  
        ,
FROM VOTE
WHERE survey_num=1 
group by choice_num ;

SELECT choice_num 
FROM VOTE
WHERE survey_num=1 AND count(*)=0
group by choice_num =0;

select *
from vote

SELECT *
FROM VOTE v  right outer JOIN item i ON v.survey_num=i.survey_num
AND survey_num=1
AND choice_num IN ('1','2','3','4','5','6','7','8','9') 
group by choice_num ;

WHERE survey_num=1 
group by choice_num ;

SELECT LPAD(' ', count(*)+1, '#')  
FROM VOTE v left outer JOIN item i ON v.survey_num=i.survey_num
WHERE survey_num=1 
group by choice_num ;

SELECT s.SURVEY_NUM, s.COL_NUMBER, s.TITLE
FROM Survey s
WHERE NOT EXISTS (
    SELECT 1
    FROM Vote v
    WHERE v.SURVEY_NUM = s.SURVEY_NUM
      AND v.COL_NUMBER = s.COL_NUMBER
);





SELECT user_id, user_name
FROM Member
WHERE user_email_address IS NULL;



SELECT *
FROM SURVEY
WHERE survey_num=1 
group by choice_num ;

SELECT *
FROM VOTE v RIGHT outer JOIN item i ON v.survey_num=i.survey_num;










SELECT
    ����, �ۼ���, ������, ������, �׸��, ����
    , LISTAGG(CHOICE1, ', ') WITHIN GROUP (ORDER BY CHOICE1) AS �׸�   
FROM (
    SELECT
        s.TITLE AS ����
        , s.WRITE_DATE AS �ۼ���
        , s.START_DATE AS ������
        , s.END_DATE AS ������
        , s.COL_NUMBER AS �׸��
        , i.CHOICE1 AS CHOICE1
        , CASE
        WHEN SYSDATE BETWEEN s.START_DATE AND s.END_DATE THEN '���� ��'
        WHEN SYSDATE < s.START_DATE THEN '���� ��'
        ELSE '����'
    END AS ����
    FROM 
        Survey s 
    JOIN 
        vote v ON s.SURVEY_NUM = v.SURVEY_NUM
    JOIN 
        MEMBER m ON m.USER_ID = v.USER_ID
    JOIN 
        Item i ON i.SURVEY_NUM = s.SURVEY_NUM
    GROUP BY 
        s.TITLE, s.WRITE_DATE, s.START_DATE, s.END_DATE, s.COL_NUMBER, i.CHOICE1
)
GROUP BY 
    ����, �ۼ���, ������, ������, �׸��, ����;