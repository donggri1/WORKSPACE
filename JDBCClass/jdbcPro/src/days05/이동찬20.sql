

-- [쿼리작성.]




--salgrade : grade , losal , hisal
SELECT grade ||'등급'||'('||losal||' ~ ' || hisal || ')'
FROM salgrade s ;
--
SELECT grade ,losal,hisal
    ,COUNT(*) cnt
FROM salgrade s JOIN emp e ON e.sal BETWEEN s.losal AND s.hisal
GROUP BY grade,losal,hisal
ORDER BY grade ASC;

--    dept : deptno,dname
--    emp : empno, ename,sal
--    salgrade 

select d.deptno,dname,empno,ename,sal
from dept d RIGHT OUTER JOIN emp e ON d.deptno =e.deptno
            JOIN salgrade s ON sal BETWEEN losal AND hisal
            WHERE grade = 2;
            

SELECT dname,d.deptno,COUNT(*) cnt
FROM dept d RIGHT OUTER JOIN emp e ON e.deptno = d.deptno
GROUP BY dname,d.deptno
ORDER BY d.deptno ASC;

select  *
from emp 


SELECT empno,ename,hiredate,sal+NVL(comm,0) pay
FROM emp
Where deptno = 10 OR IS null ;
select *
from dept

delete dept where deptno = 50;



SELECT table_name FROM tabs

//mssql server
create table cstVSBoard (
  seq int identity (1, 1) not null primary key clustered,
  writer varchar (20) not null ,
  pwd varchar (20) not null ,
  email varchar (100) null ,
  title varchar (200) not null ,
  writedate smalldatetime not null default (getdate()),
  readed int not null default (0),
  mode tinyint not null ,
  content text null
)
//oracle 수정
CREATE TABLE tbl_cstVSBoard (
  seq NUMBER NOT NULL PRIMARY KEY , -- 글 일련번호(PK)
  writer VARCHAR2(20) NOT NULL,    -- 작성자 
  pwd VARCHAR2(20) NOT NULL ,
  email VARCHAR2(100) ,
  title VARCHAR2(200) NOT NULL,
  writedate DATE DEFAULT SYSDATE,
  readed NUMBER DEFAULT 0,
  tag NUMBER(1) NOT NULL,
  content CLOB 
);
--
CREATE SEQUENCE SEQ_TBL_CSTVSBOARD
NOCACHE;
--

-- 150 개의 게시글 임의로 추가

BEGIN
    FOR I IN 1..150
    LOOP
        INSERT INTO TBL_CSTVSBOARD
        (seq,writer,pwd,email,title,tag,content)
        VALUES
        (SEQ_TBL_CSTVSBOARD.NEXTVAL,'홍길동'||i,'1234'
        ,'hong' ||i||'@sist.com'
        ,'title-'||i
        ,0
        ,'content-'||i);
    END LOOP;
    COMMIT;
END;


select *
from TBL_CSTVSBOARD;
--
BEGIN
    UPDATE TBL_CSTVSBOARD
    SET writer = '김영진'
--    WHERE MOD(seq,7)=1;
    WHERE MOD(seq,15)=2;
END;
--
BEGIN
    UPDATE TBL_CSTVSBOARD
    SET title = '저장 프로시저'
--    WHERE MOD(seq,7)=1;
    WHERE MOD(seq,9) IN (3,5);
END;

DESC TBL_CSTVSBOARD;
SELECT *
FROM TBL_CSTVSBOARD;
INSERT INTO TBL_CSTVSBOARD
VALUES ( );


-- select () String sql TOP-N


SELECT *
FROM(
    SELECT ROWNUM no,t.*
    FROM(
        SELECT seq, title, writer, email, writedate, readed
                FROM tbl_cstvsboard 
            ORDER BY seq DESC
        )t
    )b
WHERE NO BETWEEN 151 AND 160;

SELECT CEIL(COUNT(*)/10)
FROM tbl_cstvsboard;



 SELECT CEIL(COUNT(*)/10),seq,title
 FROM tbl_cstvsboard
 WHERE REGEXP_LIKE(title,'프로시저','i')
 OR REGEXP_LIKE (content,'프로시저','i');




