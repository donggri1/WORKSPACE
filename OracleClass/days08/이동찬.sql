1. 데이터검색 
샘플)
SELECT *
FROM tab;

SELECT *
FROM employees;

SELECT employee_id,first_name||last_name,salary,job_id,hire_date,manager_id
FROM employees;

1)
SELECT first_name||last_name NAME,job_id Job,salary Salary,salary*12+100 "increased Ann_Salary",(Salary+100)*12 "Increased Salary"
FROM employees; 
2)
SELECT last_name||' :'||' Year Salary = '||'$'||Salary*12 "1 Year Salary"
FROM employees;
3) 
SELECT DISTINCT department_id,job_id
FROM employees;

WHERE

샘플)
SELECT first_name||last_name Name,salary
FROM employees
WHERE salary BETWEEN 7000 AND 10000
ORDER BY salary ASC;

1) 
SELECT *
FROM employees
WHERE last_name LIKE '%e%' AND last_name LIKE '%o%'  ; "e and o Name"

2)
select TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS') from dual;

SELECT first_name||last_name Name,employee_id,hire_date
FROM employees
WHERE hire_date> TO_DATE('2006.05.20') AND hire_date< TO_DATE('2007.05.20')

3)
SELECT first_name||last_name Name,salary,job_id,NVL(commission_pct,0)
FROM employees
ORDER BY salary DESC,NVL(commission_pct,0) DESC;

3 단일 행 함수 및 변환함수
샘플)

SELECT employee_id,last_name||first_name Name,salary,ROUND(salary*112.3) "Increased Salary"
FROM employees
WHERE department_id = 60;

1)
SELECT INITCAP(first_name)||INITCAP(last_name)||' is a '||UPPER(job_id) "Employee JOBs"
FROM employees
WHERE first_name LIKE UPPER('s%')

2)
SELECT last_name||first_name Name, salary
            ,salary+NVL(commission_pct,0) "Annual Salary"
            ,NVL2(commission_pct,'Salary+commision','salary only') "Commission?"
FROM employees

3)

SELECT  last_name||first_name Name, hire_date,TO_CHAR(hire_date,'day') "Day of the Week"
FROM employees;

4.집계함수
샘플)
SELECT COUNT(DISTINCT MANAGER_ID)
FROM employees


SELECT *
FROM employees;

1) 
SELECT DEPARTMENT_ID
,       TO_CHAR(AVG(salary),'$999,999.00')
        ,TO_CHAR(MAX(salary),'$999,999.00')
        ,TO_CHAR(MIN(salary),'$999,999.00')
FROM employees
WHERE DEPARTMENT_ID IS NOT NULL
GROUP BY DEPARTMENT_ID 
ORDER BY DEPARTMENT_ID ASC;

2)
SELECT  job_id, AVG(salary)
FROM employees
WHERE salary>'10000' 
GROUP BY job_id
HAVING job_id!='CLERK'
ORDER BY AVG(salary) DESC;

5 JOIN

샘플)

DESC hr_user;
DESC employees;
DESC departments;
DESC locations;

select *
--FROM employees
--FROM departments
FROM locations


SELECT 'Han-Bit',e.last_name||e.first_name Name,d.department_name,e.job_id,l.city
FROM employees e JOIN departments d ON (e.department_id = d.department_id)
                JOIN locations l ON(d.location_id = l.location_id)
                AND l.city = 'Oxford'
                


1)
SELECT d.department_name,COUNT(e.employee_id)
FROM employees e JOIN departments d  ON e.department_id = d.department_id
GROUP BY e.department_id ,d.department_id,d.department_name
HAVING COUNT(e.department_id) >5 2 )

2)
CREATE TABLE Job_Grades( grade_level VARCHAR2(3),lowest_sal NUMBER, highest_sal NUMBER);

INSERT INTO Job_Grades VALUES('A',1000,2999);
INSERT INTO Job_Grades VALUES('B',3000,5999);
INSERT INTO Job_Grades VALUES('C',6000,9999);
INSERT INTO Job_Grades VALUES('D',10000,14999);
INSERT INTO Job_Grades VALUES('E',15000,24999);
INSERT INTO Job_Grades VALUES('F',25000,40000);
COMMIT;

SELECT first_name||last_name Name ,d.department_name, e.job_id,e.hire_date,e.salary,j.grade_level
FROM employees e JOIN job_grades j ON (e.salary BETWEEN j.lowest_sal AND highest_sal)
                 JOIN departments d ON (e.department_id = d.department_id)


SELECT * FROM JOB_GRADES;
A	1000	2999
B	3000	5999
C	6000	9999
D	10000	14999
E	15000	24999
F	25000	40000
SELECT * 
FROM locations


5-3)

SELECT INITCAP(e.first_name)||' '||INITCAP(e.last_name) || ' report to '||UPPER(e2.First_name)||UPPER(e2.last_name)
FROM employees e LEFT OUTER JOIN employees e2 ON e.manager_id = e2.employee_id


6부속질의
샘플)
SELECT first_name||last_name Name,job_id,salary
FROM employees
WHERE salary > (SELECT salary FROM employees WHERE last_name='Tucker')

6-1)

SELECT first_name||last_name Name,job_id,salary,hire_date
FROM employees e
WHERE salary = (SELECT MIN(salary) FROM employees WHERE job_id = e.job_id)
ORDER BY salary DESC;

6-2
SELECT first_name||last_name Name,job_id,salary,department_id,job_id
FROM employees e
WHERE salary >(SELECT AVG(salary) FROM employees WHERE department_id = e.department_id)


6-  3)
SELECT employee_id,first_name||last_name Name,job_id,hire_date,l.city
FROM employees e JOIN departments d ON (e.department_id = d.department_id)
                JOIN locations l ON(d.location_id = l.location_id)
WHERE SUBSTR(l.city, 1, 1) = 'O'; -- 질문 가공하면 단순히  O인데 되는이유



6- 4)
AVG(salary)
first_name||last_name Name,job_id,salary,department_id,avg(부서평균연봉)
SELECT first_name||last_name Name,job_id,salary,department_id
FROM emp e
WHERE department_id= e.department_id


집합연산자
샘플 ) 
SELECT employee_id,job_id
FROM employees
UNION
SELECT employee_id,job_id
FROM job_history;


--SELECT DISTINCT e.employee_id,e.job_id 현재,j.job_id 이전
--FROM employees e ,job_history j
--ORDER BY employee_i
--WHERE e.employee_id = j.employee_id
SELECT *
FROM job_history
1)
SELECT employee_id,job_id,department_id
FROM employees
UNION ALL
SELECT employee_id,job_id,department_id
FROM job_history
ORDER BY employee_id ASC;

2)
SELECT employee_id,job_id
FROM employees
INTERSECT
SELECT employee_id,job_id
FROM job_history

SELECT employee_id,job_id
FROM employees
INTERSECT
SELECT employee_id,job_id
FROM job_history


SELECT employee_id,job_id,start_date,end_date
FROM job_history
WHERE employee_id=176
UNION ALL
SELECT employee_id,'job_id','start_date','end_date'
FROM employees
WHERE employee_id=176








































