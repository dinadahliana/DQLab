SELECT 
	MONTH(o.paid_at) AS bulan,
	d.product_id,
	p.desc_product,
	SUM(d.quantity) AS total_qty
FROM 
	order_details d 
INNER JOIN 
	orders o 
ON 
	d.order_id = o.order_id
INNER JOIN 
	product p 
ON 
	d.product_id = p.product_id
WHERE 
	MONTH(o.paid_at) = 12
AND 
	YEAR(o.paid_at) = 2019
GROUP BY 
	d.product_id

