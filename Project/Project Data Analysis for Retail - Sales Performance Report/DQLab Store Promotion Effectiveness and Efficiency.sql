-- Promotion Effectiveness and Efficiency by Years
-- Efektifitas dan efisiensi dari promosi yang dilakukan 
-- akan dianalisa berdasarkan Burn Rate
-- DQLab berharap bahwa burn rate tetap berada diangka maskimum 4.5%
-- Formula untuk burn rate : (total discount / total sales) * 100

SELECT 
	YEAR(order_date) years,
	SUM(sales) sales,
	SUM(discount_value) promotion_value,
	ROUND((SUM(discount_value)/SUM(sales))*100, 2) burn_rate_percentage
FROM
	dqlab_sales_store
WHERE 
	order_status LIKE 'Order Finished'
GROUP BY 
	YEAR(order_date);

-- Promotion Effectiveness and Efficiency by Product Sub Category
SELECT 
	YEAR(order_date) 		AS years,
	product_sub_category,
	product_category,
	SUM(sales) 				AS sales,
	SUM(discount_value) 	AS promotion_value,
	ROUND((SUM(discount_value)/SUM(sales))*100, 2)
							AS burn_rate_percentage
FROM 
	dqlab_sales_store
WHERE 
	order_status = 'Order Finished'
AND 
	YEAR(order_date) = 2012
GROUP BY 
	YEAR(order_date),
	product_sub_category,
	product_category
ORDER BY 
	SUM(sales) DESC
LIMIT 5;