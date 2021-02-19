-- Customers Transactions per Year
-- Menampilkan jumlah customer (number_of_customer) 
-- yang bertransaksi setiap tahun dari 2009 sampai 2012 (years).

SELECT 
	YEAR(order_date) years,
	COUNT(DISTINCT(customer)) number_of_customer
FROM 
	dqlab_sales_store
WHERE 
	order_status LIKE 'Order Finished'
GROUP BY 
	YEAR(order_date)
