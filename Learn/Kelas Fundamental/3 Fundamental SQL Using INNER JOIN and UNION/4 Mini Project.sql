-- Project INNER JOIN
-- menampilkan kode_pelanggan, nama_customer, dan alamat
-- yang membeli produk Kotak Pensil DQLab, atau Flashdisk DQLab 32 GB,
-- atau Sticky Notes DQLab 500 sheets.
SELECT 
	distinct ms_pelanggan.kode_pelanggan,
	ms_pelanggan.nama_customer,
	ms_pelanggan.alamat
FROM 
	ms_pelanggan
INNER JOIN
	tr_penjualan
ON
	ms_pelanggan.kode_pelanggan = tr_penjualan.kode_pelanggan 
WHERE 
	tr_penjualan.nama_produk = 'Kotak Pensil DQLab'
OR 
	tr_penjualan.nama_produk = 'Flashdisk DQLab 32 GB' 
OR
	tr_penjualan.nama_produk = 'Sticky Notes DQLab 500 sheets';

-- Project UNION
-- menampilkan nama_produk, kode_produk, dan harga produk
-- dengan harga di bawah 100K untuk kode produk prod-1 
-- sampai prod-5; dan dibawah 50K untuk kode produk prod-6 
-- sampai prod-10.
SELECT 
	nama_produk,
	kode_produk,
	harga
FROM 
	ms_produk_1
WHERE 
	harga < 100000
UNION
SELECT 
	nama_produk,
	kode_produk,
	harga
FROM 
	ms_produk_2
WHERE 
	harga < 50000;