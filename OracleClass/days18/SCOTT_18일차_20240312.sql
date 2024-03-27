--SCOTT
--(ȭ) : Ʈ�����,[��ȣȭ], �����ٷ�
CREATE TABLE tbl_member
(
    id VARCHAR2(20) PRIMARY KEY
    ,passwd VARCHAR2(20)
);


INSERT INTO tbl_member(ID,PASSWD) values( 'hong', cryptit.encrypt('1234','test' ));
ROLLBACK;

SELECT *
FROM tbl_member;

SELECT t.*,
    cryptit.decrypt(t.passwd,'test')
FROM tbl_member t;
-- DBMSOBTK���� prvtobtk����
-- ����Ŭ ��ȣȭ/��ȣȭ ��Ű�� ���� : DBMS_OBFUSCATION_TOLLKIT ( 4���� ���ν��� )
-- VARCHAR2, NUMBER X

--[ SYS �������� ���� ]
-- SYS -> SCOTT DBMS_OBFUSCATION_TOOLKIT��Ű���� ����� ���� �ο�.
GRANT EXECUTE ON DBMS_OBFUSCATION_TOOLKIT TO SCOTT;

--
GRANT EXECUTE ON DBMS_OBFUSCATION_TOOLKIT TO PUBLIC;
-- DBMS_OBFUSCATION_TOOLKIT ��ĳ���� ���� ���ν����� ����ؼ� 
-- ������ ��ȣȭ ������ ó���ϴ� ��Ű���� ����





--����
CREATE OR REPLACE PACKAGE CryptIT
IS
   FUNCTION encrypt(str VARCHAR2, HASH VARCHAR2)
       RETURN VARCHAR2;
   FUNCTION decrypt(str VARCHAR2, HASH VARCHAR2)
       RETURN VARCHAR2;
END CryptIT;





--��ü
CREATE OR REPLACE PACKAGE BODY CryptIT
IS
   s VARCHAR2(2000);
    
   FUNCTION encrypt(str VARCHAR2, HASH VARCHAR2)
       RETURN VARCHAR2
        IS
            p NUMBER := ((FLOOR(LENGTH(str)/8+0.9))*8);
        BEGIN
            DBMS_OBFUSCATION_TOOLKIT.DESEncrypt(
               input_string => RPAD(str,p)
                ,key_string => RPAD(HASH,8,'#')
                ,encrypted_string => s
            );
            RETURN s;
        END;
   FUNCTION decrypt(str VARCHAR2, HASH VARCHAR2)
       RETURN VARCHAR2
        IS
        BEGIN
            DBMS_OBFUSCATION_TOOLKIT.DESDecrypt(
               input_string => str
                ,key_string => RPAD(HASH,8,'#')
                ,decrypted_string => s
            );
            RETURN TRIM(s);
        END;    

END CryptIT;



CREATE OR REPLACE PACKAGE BODY CryptIT
IS
   s VARCHAR2(2000);
    
   FUNCTION encrypt(str VARCHAR2, HASH VARCHAR2)
       RETURN VARCHAR2
        IS
            p NUMBER := ((FLOOR(LENGTH(str)/8+0.9))*8);
        BEGIN
            DBMS_OBFUSCATION_TOOLKIT.DESEncrypt(
               input_string => RPAD(str,p)
                ,key_string => RPAD(HASH,8,'#')
                ,encrypted_string => s
            );
            RETURN s;
        END;
   FUNCTION decrypt(str VARCHAR2, HASH VARCHAR2)
       RETURN VARCHAR2
        IS
        BEGIN
            DBMS_OBFUSCATION_TOOLKIT.DESDecrypt(
               input_string => str
                ,key_string => RPAD(HASH,8,'#')
                ,decrypted_string => s
            );
            RETURN TRIM(s);
        END;    

END CryptIT;





