-- Transaksi Bulanan
SELECT 
	YEAR(created_at) AS tahun,
	MONTH(created_at) AS bulan,
	COUNT(*) AS jumlah_transaksi
FROM
	orders
GROUP BY 
	bulan, 
    tahun
ORDER BY 
	tahun,
	bulan;
    
SELECT * FROM orders;
