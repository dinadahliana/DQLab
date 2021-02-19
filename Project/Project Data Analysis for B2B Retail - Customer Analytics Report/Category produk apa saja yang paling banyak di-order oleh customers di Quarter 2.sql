SELECT 
	categoryID,
	total_order,
	total_penjualan
FROM 
 (
SELECT 
	categoryID,
	COUNT(DISTINCT orderNumber) AS total_order,
	SUM(quantity) AS total_penjualan
FROM
 (
  SELECT 
	  productCode,
	  orderNumber,
	  quantity,
	  status,
	  LEFT(productCode, 3) AS categoryID
  FROM
	  orders_2
  WHERE 
	  status = 'Shipped'
 ) tabel_c
GROUP BY 
	categoryID ) tabel_d
ORDER BY 
	total_order DESC;

