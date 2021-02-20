-- Contoh penggunaan HAVING
-- customer_id yang melakukan perpindahan subscription 
-- pada table subscription
SELECT 
	customer_id 
FROM 
	Subscription 
GROUP BY 
	customer_id 
HAVING 
	COUNT(customer_id) > 1;

-- Menampilkan Konsumen yang berubah berlangganan
SELECT 
	customer_id,
    product_id,
    subscription_date
FROM 
	Subscription 
WHERE 
	customer_id IN 
				(SELECT 
			    	customer_id 
			     FROM Subscription 
			     GROUP BY customer_id 
			     HAVING COUNT(customer_id) > 1
			  	) 
ORDER BY 
	customer_id ASC;

-- Menampilkan detail konsumen
SELECT 
       b.name,
	   b.address,
       b.phone, 
       a.product_id, 
       a.subscription_date 
FROM 
	subscription a 
JOIN 
	customer b 
ON 
	a.customer_id=b.id
WHERE
	b.id IN 
			(SELECT 
			    	customer_id 
			FROM Subscription 
			GROUP BY customer_id 
			HAVING COUNT(customer_id) > 1
			 )
		 
ORDER BY 
	b.id ASC;
