-- Menggunakan WHERE
-- Menampilkan data produk dengan nama Tas Travel Organizer DQLab
SELECT *
FROM
	ms_produk
WHERE
	nama_produk = 'Tas Travel Organizer DQLab';

-- Menggunakan Operand OR
-- Menampilkan data produk dengan nama Gantungan Kunci DQLab ATAU 
-- Tas Travel Organizer DQLab ATAU Flashdisk DQLab 64 GB
SELECT * 
FROM 
	ms_produk 
WHERE 
	nama_produk = 'Gantungan Kunci DQLab' 
OR 
	nama_produk = 'Tas Travel Organizer DQLab' 
OR 
	nama_produk = 'Flashdisk DQLab 64 GB';

-- Filter untuk Angka
-- Menampilkan data produk yang memiliki harga di atas Rp.50000
SELECT * 
FROM
	ms_produk 
WHERE
	harga > 50000;

-- Menggunakan Operand AND
-- Menampilkan data produk dengan nama Gantungan Kunci DQLab
-- dan memiliki harga di bawah Rp.50000
SELECT * 
FROM 
	ms_produk 
WHERE 
	nama_produk = 'Gantungan Kunci DQLab' 
AND
	harga < 50000;

-- Quiz: Query Filter dengan OR yang Benar
SELECT * 
FROM 
	ms_produk 
WHERE 
	nama_produk = 'Gantungan Kunci DQLab' 
OR 
	harga < 50000;

-- Quiz: Filter yang Akan Mengeluarkan Hasil
SELECT * 
FROM 
	ms_produk 
WHERE 
	harga > 50000 
OR 
	harga < 50000;
