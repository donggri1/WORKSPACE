--������ ����( hierarchical query )

-- ������ ������ ���̽��� 2����(��/��) ���̺� ������ ���� ��� �����͸� �����Ѵ�.
--  int [] m = new int[3] ��
--  int [][] m = new int [3] [4] ��/��

SELECT *
FROM dept;
--�ǹ������� ����� ������ , ������ ����ó�� �������� ������ ������ ���� ����ϰ� �ִ�.
-- ���� ������� ������ ������ ���̺����� �������� �����͸� �����Ͽ� ��ȸ�� �� �ִ� ����� �ʿ��ϴ�.
--, ������ ������ ���̽������� �����Ͱ��� �θ�-�ڽ� ���踦 ǥ���� �� �ִ�[�÷�]�� �����Ͽ� �������� 
-- ��) ���θ� ����Ʈ ���� ��з�/�ߺз�/�Һз� ����? 1�� ���̺�(��������), 3�� ���̺� ����
--�ϳ��� ���̺��� �������� ������ ǥ���ϴ� ���踦 ��ȯ����(recursive relationship)��� �Ѵ�.
-- ��) emp ��������...
--      �� �θ�-�ڽ� ���踦 ǥ���� �� �ִ� [�÷�] : mgr
select *
from emp;
--ORA-01788: CONNECT BY clause required in this query block
SELECT LEVEL            --(�ϱ�)
FROM dual
CONNECT BY LEVEL <=31;
--
	SELECT 	[LEVEL] {*,�÷��� [alias],...}
	FROM	���̺��
	WHERE	����
	START WITH ����
	CONNECT BY [PRIOR �÷�1��  �񱳿�����  �÷�2��]
		�Ǵ� 
		   [�÷�1�� �񱳿����� PRIOR �÷�2��]
--
SELECT mgr,empno
        ,LPAD(' ', (LEVEL-1)*3) ||ename
        ,LEVEL
FROM emp
START WITH mgr IS NULL
--START WITH mgr ='7839'
CONNECT BY PRIOR empno =mgr; -- PRIOR �ڽ� = �θ�; TOP_DOWN �������
--CONNECT BY PRIOR mgr =empno; -- PRIOR �θ� = �ڽ�; BOTTOM_UP �������

������ mgr=7698�� BLAKE�� �޴����� �� empno�� ������ ���̴�.
SELECT mgr,empno,ename,LEVEL
FROM emp
WHERE mgr = 7698
START WITH mgr IS NULL
CONNECT BY PRIOR empno=mgr;

-- ��) �а�/�к�/�ܰ���
create table tbl_test(
    deptno number(3) not null primary key,
    dname varchar2(24) not null,
    college number(3),
    loc varchar2(10)
);
SELECT *
FROM tbl_test;

INSERT INTO tbl_test VALUES(101,'��ǻ�Ͱ��а�',100,'1ȣ��');
INSERT INTO tbl_test VALUES(102,'��Ƽ�̵���а�',100,'2ȣ��');
INSERT INTO tbl_test VALUES(201,'���ڰ��а�',200,'3ȣ��');
INSERT INTO tbl_test VALUES(202,'�����а�',200,'4ȣ��');
INSERT INTO tbl_test VALUES(100,'�����̵���к�',10,NULL);
INSERT INTO tbl_test VALUES(200,'��īƮ�δн��к�',10,NULL);
INSERT INTO tbl_test VALUES(10,'��������',NULL,NULL);


DROP TABLE tbl_test;



SELECT LPAD(' ' , (LEVEL-1)*3  )|| dname
FROM tbl_test
START WITH deptno=10
CONNECT BY PRIOR deptno=college;

SELECT LPAD(' ' , (LEVEL-1)*3  )|| dname
FROM tbl_test
START WITH dname='��������'
CONNECT BY PRIOR deptno=college;

-- �������� �������� ���

SELECT LPAD('��' , (LEVEL-1)*3  )|| dname
FROM tbl_test
--WHERE dname != '�����̵���к�' �ڽĳ��� �����������
START WITH college IS NULL
CONNECT BY PRIOR deptno=college AND dname != '�����̵���к�' ;

-- 1. START WITH ��
-- 2. CONNECT BY �� : ������ ������ � ������ ����Ǵ����� ����ϴ� ����
--     PRIOR ������ : 
-- 3. CONNECT_BY_ROOT : ������ �������� �ֻ��� �ο�(��)�� ��ȯ�ϴ� ������
-- 4. CONNECT_BY_ISLEAF : CONNECT BY ���ǿ� ���ǵ� ���迡 ���� �ش� ���� ������ �ڽ���
--                        �̸� 1, �׷��� ������ 0 ��ȯ�ϴ� �ǻ� �÷�.
-- 5. SYS_CONNECT_BY_PATH(column,char) : ��Ʈ ��忡�� �����ؼ� �ڽ��� �����
--                      ���� ��θ� ��ȯ�ϴ� �Լ�
-- 6. CONNECT_BY_ISCYCLE : ����(�ݺ�) �˰��� �ǻ��÷�.    1/0 ���

--SELECT e.empno
--    ,LPAD(' ',3*(LEVEL-1)) || e.ename
--    ,LEVEL
--    ,d.dname,d.deptno
--FROM emp e,dept d
--WHERE e.deptno = d.deptno(+)
--START WITH e.mgr IS NULL
--CONNECT BY PRIOR e.empno=e.mgr;


--CONNECT_BY_ROOT ������:
SELECT e.empno
    ,LPAD(' ',3*(LEVEL-1)) || e.ename
    ,LEVEL
    ,e.deptno
    ,CONNECT_BY_ROOT ename
    ,CONNECT_BY_ISLEAF --�ǻ��÷�
    ,SYS_CONNECT_BY_PATH(ename,'/')
FROM emp e
START WITH e.mgr IS NULL
CONNECT BY PRIOR e.empno=e.mgr;

-- ������ ���� ����(ORDER SIBLINGS BY) ��

--[ ��(VIEW) ]

FROM user_tables; --all_XXX,dba,XXX 
FROM ���̺� �Ǵ� [��]

CREATE OR REPLACE [FORCE | NOFORCE] VIEW ���̸�
		[(alias[,alias]...]
	AS subquery
	[WITH CHECK OPTION]
	[WITH READ ONLY];


OR REPLACE ���� �̸��� �䰡 ���� ��� �����ϰ� �ٽ� ���� 
FORCE �⺻ ���̺��� ������ ������� �並 ���� 
NOFORCE �⺻ ���̺��� ���� ���� �並 ���� 
ALIAS �⺻ ���̺��� �÷��̸��� �ٸ��� ������ ���� �÷��� �ο� 
WITH CHECK OPTION �信 ���� access�� �� �ִ� ��(row)���� ����, ���� ���� 
WITH READ ONLY DML �۾��� ����(���� �д� �͸� ����) 











