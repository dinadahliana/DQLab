-- Tugas Praktek
-- Menampilkan seluruh data tabel ms_item_kategori
SELECT * 
FROM 
	ms_item_kategori;

-- dan ms_item_warna
SELECT * 
FROM  ms_item_warna;

-- Menggabungkan Tabel dengan Key Columns
SELECT *
FROM
	ms_item_kategori,
	ms_item_warna
WHERE
	nama_barang = nama_item;

-- Quiz: Query Penggabungan Tabel Yang Benar
SELECT * 
FROM 
	A, B 
where 
	kolom1 = kolom2;

-- Bagaimana jika urutan Tabel diubah?
-- Tidak akan mengubah hasil, hanya  akan ada kemungkinan
-- mengubah urutan data
SELECT *
FROM
	ms_item_warna,
	ms_item_kategori
where
	nama_barang = nama_item;

-- Menggunakan Prefix Nama Tabel
-- menampilkan seluruh data dari tabel item warna dan item kategori
SELECT 
	ms_item_kategori.*,
	ms_item_warna.*
FROM 
	ms_item_warna,
	ms_item_kategori
where 
	nama_barang = nama_item;

-- Penggabungan Tanpa Kondisi
-- CROSS JOIN (total baris tabel1 * total baris tabel2)
SELECT *
FROM 
	ms_item_kategori,
	ms_item_warna;

-- Quiz: Berapa Jumlah Baris Hasil “Join Tanpa Kondisi” Berikut?
-- total baris ms_item_kategori = 8
-- total baris ms_item_warna = 10
-- jumlah baris “Join Tanpa Kondisi” = 8*10 = 80

--