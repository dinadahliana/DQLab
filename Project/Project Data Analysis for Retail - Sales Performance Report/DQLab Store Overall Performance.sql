-- Overal Performance by Year
-- Menampilkan total penjualan (sales) dan jumlah order (number_of_order) 
-- dari tahun 2009 sampai 2012 (years).

SELECT 
	YEAR(order_date) years,
	ROUND(SUM(sales), 2) sales,
	COUNT(*) number_of_order
FROM
	dqlab_sales_store
WHERE 
	order_status LIKE 'Order Finished'
GROUP BY 
	YEAR(order_date);

-- Overall Performance by Product Sub Category
-- Menampilkan otal penjualan (sales) berdasarkan sub category dari produk 
-- (product_sub_category) pada tahun 2011 dan 2012 saja (years) 

SELECT 
	YEAR(order_date) AS years,
	product_sub_category,
	SUM(sales) AS sales
FROM
	dqlab_sales_store
WHERE
	YEAR(order_date) IN (2011, 2012)
AND 
	order_status LIKE 'Order Finished'
GROUP BY 
	years,
	product_sub_category
ORDER BY 
	years,
	sales DESC
LIMIT 5;
