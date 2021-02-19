-- Menampilkan keseluruhan isi tabel ms_produk
SELECT * FROM ms_produk;

-- Menentukan Kolom dan Jumlah Baris Yang Ditampilkan
-- Memilih kolom nama_produk untuk ditampilkan
SELECT nama_produk FROM ms_produk;

-- Memilih kolom harga untuk ditampilkan
SELECT harga FROM ms_produk;

-- Mengambil lebih dari satu kolom
-- Memilih kolom nama_produk dan harga untuk ditampilkan
SELECT 
	nama_produk,
    harga
FROM 
	ms_produk;

-- Memilih kolom kode_produk dan harga untuk ditampilkan
 SELECT 
	kode_produk,
    harga
FROM 
	ms_produk; 
    
-- Membatasi Pengambilan Jumlah Row Data
SELECT 
	nama_produk
FROM 
	ms_produk 
LIMIT 3;

-- Mengambil data sejumlah 4 baris data untuk seluruh kolom
SELECT * 
FROM
	ms_produk
LIMIT 4;
	