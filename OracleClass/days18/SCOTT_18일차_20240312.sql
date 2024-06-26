--SCOTT
--(화) : 트랜잭션,[암호화], 스케줄러
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
-- DBMSOBTK파일 prvtobtk파일
-- 오라클 암호화/복호화 패키지 제공 : DBMS_OBFUSCATION_TOLLKIT ( 4개의 프로시저 )
-- VARCHAR2, NUMBER X

--[ SYS 계정으로 접속 ]
-- SYS -> SCOTT DBMS_OBFUSCATION_TOOLKIT패키지를 사용할 권한 부여.
GRANT EXECUTE ON DBMS_OBFUSCATION_TOOLKIT TO SCOTT;

--
GRANT EXECUTE ON DBMS_OBFUSCATION_TOOLKIT TO PUBLIC;
-- DBMS_OBFUSCATION_TOOLKIT 패캐지의 저장 프로시저를 사용해서 
-- 나만의 암호화 로직을 처리하는 패키지르 선언





--선언
CREATE OR REPLACE PACKAGE CryptIT
IS
   FUNCTION encrypt(str VARCHAR2, HASH VARCHAR2)
       RETURN VARCHAR2;
   FUNCTION decrypt(str VARCHAR2, HASH VARCHAR2)
       RETURN VARCHAR2;
END CryptIT;





--몸체
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





