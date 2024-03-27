-- MADANG

SELECT MAX(saleprice)
FROM orders
WHERE custid= 3;

SELECT orderid,custid,saleprice
FROM orders
--WHERE saleprice >= 13000;
WHERE saleprice > SOME(SELECT saleprice
                    FROM orders
                    WHERE custid= 3
                    );


SELECT SUM(saleprice),AVG(saleprice),MAX(saleprice),MIN(saleprice)
FROM orders;


SELECT *
FROM customer
WHERE adDress LIKE '대한민국%'; 


-- 대한민국 고객 체크 ?
SELECT SUM(saleprice)
FROM orders
WHERE custid IN (2,3,5);

-- 상관 서브쿼리 
-- [문제] 각 부서별 최고 급여를 받는 사원의 정보를 조회(출력)

FROM

