-- Customer mendapatkan pinalty karena telat membayar.
-- Carilah customer_id dan jumlah pinalty dari yang 
-- dibayarkan oleh customer yang mendapatkan pinalty.

SELECT 
	customer_id, 
	SUM(pinalty)
FROM 
	invoice
GROUP BY 
	customer_id 
HAVING 
	SUM(pinalty) > 0;