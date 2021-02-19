-- Menampilkan transaksi-transaksi yang memiliki jumlah item produk
-- lebih dari 1 jenis produk. Dengan lain kalimat, tampilkan transaksi-transaksi 
-- yang memiliki jumlah baris data pada table tr_penjualan_detail lebih dari satu
-- Nama kolom yang harus ditampilkan:  kode_transaksi, 
-- kode_pelanggan, nama_pelanggan, tanggal_transaksi, jumlah_detail


SELECT 
	d.kode_transaksi,
	j.kode_pelanggan,
	p.nama_pelanggan,
	j.tanggal_transaksi,
	COUNT(d.kode_produk) AS jumlah_detail
FROM 
	tr_penjualan_detail d
INNER JOIN
	tr_penjualan j
ON
	d.kode_transaksi = j.kode_transaksi
JOIN 
	ms_pelanggan p 
ON 
	j.kode_pelanggan = p.kode_pelanggan
GROUP BY
	d.kode_transaksi,
	j.kode_pelanggan,
	p.nama_pelanggan,
	j.tanggal_transaksi
HAVING 
	COUNT(d.kode_produk) > 1;

