

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



