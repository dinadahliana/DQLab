-- Mengacu pada table ms_produk, tampilkan daftar produk 
-- yang memiliki harga antara 50.000 and 150.000.
-- Nama kolom yang harus ditampilkan: no_urut, kode_produk, 
-- nama_produk, dan harga.
SELECT 
	*
FROM 
	ms_produk
WHERE 
	harga BETWEEN 50000 AND 150000;
