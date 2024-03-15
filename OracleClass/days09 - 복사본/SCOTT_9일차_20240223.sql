
(월) : MERGE(병합)/제약조건/  조인/계층적 쿼리
(화) : DB 모델링 + 세미프로젝트
(수) : DB 모델링 + 발표
(목) : PL/SQL

프로젝트 요구/ 금/토/일+
(월)/(화) PL/SQL 수업 X
수/목/금/토/일/월/화  -> 발표 수/목/금   월 

create table tbl_emp(
  id number primary key, 
  name varchar2(10) not null,
  salary  number,
  bonus number default 100);

insert into tbl_emp(id,name,salary) values(1001,'jijoe',150);
insert into tbl_emp(id,name,salary) values(1002,'cho',130);
insert into tbl_emp(id,name,salary) values(1003,'kim',140);
COMMIT;
--
select *
from emp;
--
create table tbl_bonus(
    id number
    , bonus number default 100
    );
--
 insert into tbl_bonus(id)
(select e.id from tbl_emp e);
--
select *
from tbl_bonus;

INSERT INTO tbl_bonus(id,bouns)  VALUES (1004,50);

MERGE INTO tbl_bouns b
USING (SELECT id,salary FROM tbl_emp)e
ON(b.id=e.id)
WHEN MATCHED THEN
    UPDATE  SET b.bouns=b.bouns+e.salary*0.01
WHEN NOT MATCHED THEN
    INSERT  (b.id,b.bouns)  VALUES(e.id,e.salary*0.01)
;

CREATE TABLE tbl_merge1
(
    id number primary key
    ,name varchar2(20)
    ,pay number
    ,sudang number
);

CREATE TABLE tbl_merge2
(
    id number primary key
    , sudang number
    );


insert into tbl_merge1(id,name,pay,sudang) values(1,'a',100,10);
insert into tbl_merge1(id,name,pay,sudang) values(2,'b',150,20);
insert into tbl_merge1(id,name,pay,sudang) values(3,'c',130,0);

insert into tbl_merge2(id,sudang) VALUES(2,5);
insert into tbl_merge2(id,sudang) VALUES(3,10);
insert into tbl_merge2(id,sudang) VALUES(4,20);

l1l1l1
COMMIT;

SELECT *
FROM tbl_merge2;
FROM tbl_merge1;

-- 병합 : tbl_merge1(소스) -> tbl_merge2(타겟) 병합
--          1                   INSERT
--          2,3                 UPDATE

MERGE INTO tbl_merge2 t2
USING tbl_merge1 t1
--USING ( SELECT id,sudang FROM tbl_merge1) t1
ON(t2.id=t1.id)
WHEN MATCHED THEN
    UPDATE SET t2.sudang = t2.sudang +t1.sudang
WHEN NOT MATCHED THEN
    INSERT (t2.id,t2.sudang)  VALUES  (t1.id,t1.sudang);

DROP TABLE tbl_merge1 PURGE;
DROP TABLE tbl_merge2 PURGE;

DROP TABLE tbl_emp PURGE;
DROP TABLE tbl_bouns PURGE;
COMMIT;

-- 제약조건
--스캇이 소유하고있는 테이블 조회

SELECT *
FROM user_tables;

-- 스캇이 소유하고있는 emp테이블에 제약조건조회

SELECT *
FROM user_constraints
WHERE table_name = UPPER('emp');
-- 제약조건은  테이블에 I/U/D 할떄의 규칙으로 사용
--            data integrity(데이터 무결성)을 위해

--INSERT INTO dept VALUES(10,'QC','SEOUL'); 위배














