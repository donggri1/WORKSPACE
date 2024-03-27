--hr
SELECT last_name, salary 
FROM employees
WHERE last_name LIKE 'R%' -- last name 이 R로 시작하는
ORDER BY salary;
--
SELECT last_name, salary 
FROM employees
WHERE last_name LIKE 'R___'   --☜ underscore(_)가 3개임
ORDER BY salary;

