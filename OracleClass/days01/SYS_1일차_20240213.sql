-- �ּ� ó��    ctrl + /
-- ��� ����� ���� ��ȸ
-- ���θ��� ������ �ڵ�����. (����)
-- keyword(�����)�� �빮�ڷ� �Է��ϵ��� ���Ѵ�. (����)
-- ���̺��, �÷����� �ҹ��� ��� (����)
-- ������ ( ��, �� ���� ) ����
SELECT *
FROM all_users; -- Ctrl + Enter, F5

select * From All_USERS; -- Ctrl + Enter, F5 -- ��ҹ��� ������ �������


-- ���� �߿� ����� ���� ����, ����, ���� --
-- 1) SCOTT ���� ����, ����, ����
--     (1) SCOTT ���� ���� Ȯ��
SELECT *
FROM all_users;

-- tableSpace �������� ���� ū ����
-- ��Ű�� ������ ��� �ʿ��ڷ�
-- (2)SCOTT ���� ����   p153
--User SCOTT��(��) �����Ǿ����ϴ�.
--SYS�� ������ ������ SCOTT�� �����̾�� �����Ұ�
CREATE USER SCOTT IDENTIFIED BY tiger;
--  (3) SCOTT ���� ��й�ȣ 1234 ����
ALTER USER SCOTT IDENTIFIED BY tiger;
--  (4) SCOTT ����  ����
--User SCOTT��(��) �����Ǿ����ϴ�.
DROP USER SCOTT CASCADE;

-- SYS �ְ������ ������ CREATE SESSION �����ͺ��̽� ����(����) �ý��� ������ SCOTT �ο�
GRANT CREATE SESSION TO SCOTT;

GRANT CREATE SESSION TO student_role;
GRANT student_role TO SCOTT;

GRANT CONNECT, RESOURCE TO SCOTT;
-- DDL( CREATE, DROP, ALTER )
-- CREATE USER, DROP USER, ALTER USER
-- CREATE TABLESPACE, DROP TABLESPACE, ALTER TABLESPACE
-- CREATE ROLE, DROP ROLE, ALTER ROLE

--����Ŭ ��ġ�ÿ� �̸� ���ǵ� ��(role) Ȯ���ϴ� ����(sql)�� �ۼ��ϼ���
--����
SELECT *
FROM dba_roles;

SELECT grantee,privilege 
FROM DBA_SYS_PRIVS 
WHERE grantee = 'CONNECT'; 

-- SCOTT ���� + ���� ���̺� �߰�
--C:\oraclexe\app\oracle\product\11.2.0\server\rdbms\admin\scott.sql 


GRANT CONNECT,RESOURCE,UNLIMITED TABLESPACE TO SCOTT IDENTIFIED BY tiger;
CONNECT SCOTT/tiger;
CREATE TABLE dept, emp, bouns, salgrade ���̺� ����
INSERT �� -���ڵ� �߰� + TCL(COMMIT)
--
SQL> @C:\oraclexe\app\oracle\product\11.2.0\server\rdbms\admin\scott.sql
SQL> show user
USER is "SCOTT"
SQL> CONNECT SCOTT/tiger;
Connected.
SQL> show user
USER is "SCOTT"
SQL>
--[����] SCOTT���� ���� �Ŀ� scott.sql �����ؼ� ������� ���̺��� Ȯ��
SELECT *
FROM tabs;
--
SELECT *
FROM dba_tables;
-- COUNT()����Ŭ �Լ� 2551
SELECT COUNT(*)

SELECT *
FROM dictionary;

-- SYS
DROP USER cmadang CASCADE;-- �����ڵ�

CREATE USER madang IDENTIFIED BY madang DEFAULT TABLESPACE users TEMPORARY
TABLESPACE temp PROFILE DEFAULT;
GRANT CONNECT, RESOURCE TO madang;
GRANT CREATE VIEW, CREATE SYNONYM TO madang;
GRANT UNLIMITED TABLESPACE TO madang;

-- madang ���� ���� Ȯ��

SELECT *
--FROM all_users;
FROM dba_users;


FROM dba_tables;
FROM all_tables;
FROM user_tables;

-- HR ���� Ȯ��
1) HR ������ ��й�ȣ�� lion���� �����ϰ�
2) + �� ���� Ŭ�� - HR ����
3) HR ������ �ҿ��ϰ� �ִ� ���̺� ����� ��ȸ..




