-- SCOTT
-- (��) : Ʈ�����, ��ȣȭ, �����ٷ�
-- Ʈ����� ( A + B ) ���� ��ü
-- ��) ������ü
----------- A   X->���           ����  ����
----------- B   Y->�Ա�           ����  ����

-- DML��(I,U,D)      + LOCK(���)      -> �ݵ�� ��� ���� ( COMMIT , ROLLBACK )
--700076
SELECT  USERENV('SESSIONID') -- �����ȯ�� 
FROM dual; 

--
SELECT *
FROM emp
WHERE ename= 'MILLER';

--  job CLERK
UPDATE  emp
SET job = 'CLERK'
WHERE ename = 'MILLER';
--
SELECT *
FROM emp
WHERE ename= 'MILLER';
--
ROLLBACK;

-- VIEW
-- PL/SQL : �����Լ�, �������ν���, Ʈ����, ��Ű��
C Q R P XXXX
()
IS
BEGIN
    I  
    D
    S
    S
    I
    COMMIT;
E
    WHEN THEN
        ROLLBACK;
E;



























