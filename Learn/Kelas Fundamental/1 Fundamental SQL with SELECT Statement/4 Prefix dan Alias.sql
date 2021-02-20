-- Menggunakan Prefix pada Nama Kolom
SELECT 
	ms_produk.kode_produk
FROM 
	ms_produk;

-- Quiz : Perintah dengan prefix yang benar
SELECT
	ms_produk.*
FROM
	ms_produk;

-- Menggunakan Alias pada Kolom
SELECT
	no_urut AS nomor,
	nama_produk AS nama
FROM 
	ms_produk;

-- Quiz: Penggunaan Alias yang Benar untuk Kolom
SELECT
	kode_produk AS kode 
FROM
	ms_produk;

-- Menghilangkan Keyword 'AS'
SELECT
	no_urut nomor,
	nama_produk nama
FROM
	ms_produk

-- Quiz: Penggunaan Variasi Alias yang Benar
SELECT 
	kode_produk AS kode, 
	nama_produk AS nama 
FROM 
	ms_produk;

-- Menggabungkan Prefix dan Alias
SELECT 
	ms_produk.harga AS harga_jual
FROM
	ms_produk;

-- Menggunakan Alias pada Tabel
SELECT *
FROM
	ms_produk t2;

-- Prefix dengan Alias Tabel			
SELECT 
	t2.nama_produk,
	t2.harga
FROM 
	ms_produk t2;

-- Quiz: Kombinasi Prefix dan Alias yang Benar
SELECT 
	a1.kode_produk kode, 
	a1.nama_produk AS nama 
FROM 
	ms_produk a1;

