-- Menampilkan kode_pelanggan, nama_pelanggan, total_harga 
-- untuk pelanggan dengan nilai belanja paling tinggi

SELECT 
	u.kode_pelanggan,
	u.nama_pelanggan,
	SUM(d.harga_satuan*d.qty) total_harga
FROM 
	tr_penjualan_detail d 
JOIN
	tr_penjualan j
ON 
	d.kode_transaksi = j.kode_transaksi
JOIN 
	ms_pelanggan u
ON 
	u.kode_pelanggan = j.kode_pelanggan
GROUP BY 
	u.kode_pelanggan,
	j.kode_transaksi,
	u.nama_pelanggan
ORDER BY 
	total_harga DESC
LIMIT 1;