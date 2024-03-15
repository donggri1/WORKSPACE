-- HR 
-- ANTI JOIN : NOT IN ������ ����� ���
select employee_id, first_name, last_name,manager_id, department_id
FROM employees
WHERE department_id NOT IN (
                               select department_id 
                               from departments
                               where location_id = 1700
                              );
-- SEMI JOIN : EXISTS ������ ����� ���
select * 
FROM departments d
WHERE EXISTS(
                select * 
               FROM employees e
               WHERE d.department_id = e.department_id
                      and e.salary > 2500
 )











