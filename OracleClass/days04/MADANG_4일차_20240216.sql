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
WHERE adDress LIKE '���ѹα�%'; 


-- ���ѹα� �� üũ ?
SELECT SUM(saleprice)
FROM orders
WHERE custid IN (2,3,5);

-- ��� �������� 
-- [����] �� �μ��� �ְ� �޿��� �޴� ����� ������ ��ȸ(���)

FROM

