--SYS
SELECT *
FROM dba_users;

--����: ���� -�׽�Ʈ ����: ORA-28000: the account is locked

ALTER USER HR IDENTIFIED BY lion
ACCOUNT UNLOCK;

SELECT a.spid, b.name, c.server, c.type
FROM v$process a, v$bgprocess b, v$session c
WHERE b.PADDR(+) = a.ADDR AND a.ADDR = c.PADDR
    AND b.NAME is NULL;

-- ���̺����̽� ��ȸ(Ȯ��) -- 

--SELECT tablespace_name, file_name 
SELECT *
FROM dba_data_files;

SELECT tablespace_name,status 
FROM dba_tablespaces;


