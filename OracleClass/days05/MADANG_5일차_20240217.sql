-- MADANG
SELECT EXTRACT(month FROM ORDERDATE) "month",
COUNT(ORDERDATE) "Orders"
FROM  orders -- 1. �ֹ����̺���
GROUP BY EXTRACT(month FROM ORDERDATE) --2. �ֹ� ������ �׷�
ORDER BY 'Orders' DESC;

SELECT *
FROM orders;

DESC orders;