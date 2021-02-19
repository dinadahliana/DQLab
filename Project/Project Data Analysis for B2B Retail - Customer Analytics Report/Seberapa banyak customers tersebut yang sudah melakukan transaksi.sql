-- Menampilkan jumlah customers yang pernah melakukan transaksi

SELECT
	quarter,
	COUNT(customerID) AS total_customers
FROM
(
  SELECT 
	  customerID,
	  createDate,
	  QUARTER(createDate) AS quarter
  FROM
	  customer
  WHERE 
	  createDate 
  BETWEEN
	  '2004-01-01' AND '2004-06-30'
) tabel_b
WHERE 
	customerID IN
 (
  SELECT 
	  DISTINCT(customerID)
  FROM
	  orders_1
  UNION
  SELECT 
	  DISTINCT(customerID)
  FROM
	  orders_2
 )
GROUP BY 
	quarter;