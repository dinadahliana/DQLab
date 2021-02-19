-- Perubahan paket yang dilakukan oleh konsumen
-- Menampilkan konsumen yang merubah layanan

SELECT 
	t1.name,
	GROUP_CONCAT(t3.product_name)
FROM customer t1
JOIN subscription t2
ON t1.id = t2.customer_id
JOIN product t3
ON t3.id = t2.product_id
WHERE t1.id IN
	(SELECT customer_id
	 FROM subscription
	 GROUP BY customer_id
	 HAVING COUNT(*) > 1)
GROUP BY t1.name;

