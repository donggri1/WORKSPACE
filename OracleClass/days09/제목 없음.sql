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
FROM departments
FROM locations

SELECT e.last_name||e.first_name Name,d.department_name,e.job_id,l.city
FROM employees e ,departments d,locations l
WHERE l.city='Oxford'





