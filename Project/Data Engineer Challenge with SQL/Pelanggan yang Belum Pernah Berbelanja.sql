-- Menampilkan kode_pelanggan, nama_pelanggan, alamat
-- untuk pelanggan yang belum pernah berbelanja

SELECT 
	DISTINCT(p.kode_pelanggan),
	p.nama_pelanggan,
	p.alamat
FROM 
	ms_pelanggan p 
JOIN
	tr_penjualan j
WHERE 
 	p.kode_pelanggan NOT IN(SELECT kode_pelanggan
						   FROM tr_penjualan);

