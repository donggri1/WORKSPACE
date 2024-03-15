--HR
--HR ������ �����ϰ� �ִ� ���̺� ���� ��ȸ
SELECT *
FROM tabs;
-- 1)REGIONS    - " ��� ����" ���� �ִ� ���̺�
DESC regions;
REGION_ID   NOT NULL NUMBER       ����
REGION_NAME          VARCHAR2(25) ���ڿ�   ���
SELECT *
FROM regions;
-- 2)COUNTRIES  ���� ���̺�
DESC countries;
COUNTRY_ID   NOT NULL CHAR(2)           ����ID
COUNTRY_NAME          VARCHAR2(40)      ������
REGION_ID             NUMBER            ���ID
SELECT *
FROM countries;
-- 3)LOCATIONS
DESC locations;
LOCATION_ID    NOT NULL NUMBER(4)           4�ڸ� ���� ��ġ��ȣ
STREET_ADDRESS          VARCHAR2(40) �ּ�
POSTAL_CODE             VARCHAR2(12) �����ȣ
CITY           NOT NULL VARCHAR2(30) ��Ƽ
STATE_PROVINCE          VARCHAR2(25) ��
COUNTRY_ID              CHAR(2)             ����ID 
SELECT *
FROM locations;
-- 4)DEPARTMENTS �μ����̺�
DESC departments;
SELECT *
FROM departments;
-- 5)JOBS �� ���̺� (��ID, ���̸�, �ּ�SAL, �ִ� SAL)
SELECT *
FROM jobs;
-- 6)EMPLOYEES ������̺�(���ID, �̸�, ��, �̸���, ����ȣ , �Ի�����, ��ID, SAL,���)
SELECT *
FROM employees;

-- 7)JOB_HISTORY (���ID,������,������,��ID,�μ�ID)
DESC job_history;
SELECT *
FROM job_history;

SELECT *
FROM employees;
--���� ���̺��� �����ȣ, ����̸��� ���
-- *** first_name,last_name = name �ķ����� ���
--  ORA-01722: invalid number
-- ORA-00904: " ": invalid identifier
-- java���� ���ڿ� ""ǥ�� ���� ''
-- ����Ŭ ���ڿ� '' ��¥ '' �� ǥ��
-- ����Ŭ ���ڿ� ���� ������ ||
-- ����Ŭ ���ڿ� ���� �Լ� CONCAT
-- alias == AS �������� "" ��������
-- �������ִ� AS �ٶ� AS ���
SELECT employee_id 
--        ,first_name,last_name
--        ,first_name || "" || last_name
        ,first_name || '  ' || last_name 
        ,CONCAT(first_name,last_name) �̸�
      ,CONCAT(first_name,CONCAT('   ',last_name)) AS "N A M E"
        ,hire_date
FROM employees;










