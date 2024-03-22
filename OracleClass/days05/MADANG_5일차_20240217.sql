-- MADANG
SELECT EXTRACT(month FROM ORDERDATE) "month",
COUNT(ORDERDATE) "Orders"
FROM  orders -- 1. 주문테이블에서
GROUP BY EXTRACT(month FROM ORDERDATE) --2. 주문 월별로 그룹
ORDER BY 'Orders' DESC;

SELECT *
FROM orders;

DESC orders;