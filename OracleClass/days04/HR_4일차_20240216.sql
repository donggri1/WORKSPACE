--hr
--ORA-00942: table or view does not exist
SELECT *
FROM scott.emp;
--ORA-00942: table or view does not exist
SELECT *
FROM arirang;


 select * 
 from employees
 where salary = ANY(select salary 
                    from employees
                    where department_id = 30
                    );