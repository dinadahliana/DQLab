-- Status Transaksi
-- Transaksi tidak dibayar
SELECT 
	COUNT(paid_at) AS tidak_bayar
FROM
	orders
WHERE
	paid_at = 'NA';

-- Transaksi sudah bayar tidak dikirim 
SELECT 
	COUNT(delivery_at) AS tidak_dikirim
FROM
	orders
WHERE
	paid_at != 'NA'
AND
	delivery_at = 'NA';

-- Transaksi tidak dikirim
SELECT 
	COUNT(delivery_at) AS tidak_dikirim
FROM
	orders
WHERE
	delivery_at = 'NA'; 

-- Transaksi dikirm di hari pembayaran
SELECT 
	COUNT(*) AS total_order
FROM
	orders o 
INNER JOIN 
	orders o1
ON
	o.paid_at = o1.delivery_at
