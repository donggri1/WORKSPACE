--hr
SELECT commission_pct 
FROM employees ;

SELECT COUNT(*) 
FROM employees 
where commission_pct IS NOT NAN;

SELECT COUNT(*) 
FROM employees 
where commission_pct IS NOT NULL;
--
SELECT last_name 
FROM employees
where salary IS NOT INFINITE;

--[����] employees ���̺��� salary�� 1000���� ���� �� 1���� ����ϴ� ���� �ۼ�.

SELECT last_name
        ,salary
        ,ROUND(salary/1000/1)
        ,RPAD(' ',ROUND(salary/1000)+1, '*') "Salary"
FROM employees
WHERE department_id = 80
ORDER BY last_name, "Salary";
--RTRIM()/LTRIM()/TRIM()
-- ����) RTRIM(char[, set])
SELECT '   admin     '
        ,'[' || '   admin     ' || ']'
        ,'[' || RTRIM('   admin     ') || ']'
        ,'[' || LTRIM('   admin     ') || ']'
        ,'[' || TRIM('   admin     ') || ']'
FROM dual;

SELECT RTRIM('BROWINGuxXxy','xy') a
      ,RTRIM('BROWINGuxXxyxyxy','xy')
      ,LTRIM('xyBROWINGuxXxyxyxy','xy')
      --,TRIM('xyBROWINGuxXxyxyxy','xy') --ORA-00907: missing right parenthesis
      ,RTRIM( LTRIM('xyBROWINGuxXxyxyxy','xy'),'xy')
FROM dual;

--
SELECT ename
FROM emp;

SELECT EXTRACT(month FROM order_date) "month",
COUNT(order_date) "Orders"
FROM  orders
GROUP BY EXTRACT(month FROM order_date)
ORDER BY 'Orders' DESC;

SELECT *
FROM tabs;

select last_name, employee_id, hire_date    --�̸� ���÷��� ���̵� �Ի���
    ,EXTRACT(year FROM hire_date) �Ի�⵵
from employees      -- 1. ��� ���̺���
where EXTRACT(year FROM hire_date)> 1998 -- 2.1998�⺸�� ���� �Ի� �⵵ ��
order by hire_date; --�Ի��� ������ ���




