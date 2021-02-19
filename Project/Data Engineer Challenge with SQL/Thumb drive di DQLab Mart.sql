-- Tampilkan semua produk yang mengandung kata Flashdisk.
-- Nama kolom yang harus ditampilkan: no_urut, kode_produk, 
-- nama_produk, dan harga.
SELECT 
	* 
FROM 
	ms_produk 
WHERE 
	nama_produk LIKE '%Flashdisk%';