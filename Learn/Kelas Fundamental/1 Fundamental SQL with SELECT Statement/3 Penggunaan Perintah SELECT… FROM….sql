-- Mengambil Seluruh Kolom dalam suatu Tabel
-- menggunakan asterisk (*)
SELECT * FROM ms_produk;	

-- Mengambil Satu Kolom dari Tabel
-- Mengambil kolom nama_produk dari tabel ms_produk
SELECT nama_produk 
FROM ms_produk;

-- mengambil kolom harga dari tabel ms_produk
SELECT harga 
FROM ms_produk;

-- Mengambil Lebih dari Satu Kolom dari Tabel
-- mengambil kolom nama_produk dan harga
-- dari tabel ms_produk
SELECT
	nama_produk,
	harga
FROM 
	ms_produk;
    
-- mengambil kolom kode_produk dan harga
-- dari tabel ms_produk
SELECT
	kode_produk,
	harga
FROM 
	ms_produk;
    
-- Membatasi Pengambilan Jumlah Row Data
-- menampilkan 5 data teratas dari kolom
-- nama_produk dan harga
SELECT
	nama_produk,
	harga
FROM
	ms_produk 
LIMIT 5;

-- Penggunaan SELECT DISTINCT statement
-- menampilkan data unik, menghindari duplikasi
SELECT
	DISTINCT nama_customer,
	alamat
FROM

-- 
	ms_pelanggan;
    
--
