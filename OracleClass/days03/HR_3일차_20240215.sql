--hr
SELECT last_name, salary 
FROM employees
WHERE last_name LIKE 'R%' -- last name �� R�� �����ϴ�
ORDER BY salary;
--
SELECT last_name, salary 
FROM employees
WHERE last_name LIKE 'R___'   --�� underscore(_)�� 3����
ORDER BY salary;

