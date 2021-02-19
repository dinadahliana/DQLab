-- Menghitung total unik customers yang transaksi di quarter_1
SELECT COUNT(DISTINCT customerID) as total_customers FROM orders_1;
#output = 25

SELECT 
	1 AS quarter,
	ROUND(COUNT(DISTINCT customerID)/0.25,0) AS q2 
FROM 
	orders_1
WHERE 
	customerID IN
  (
  SELECT 
	  DISTINCT customerID
  FROM 
	  orders_2);
