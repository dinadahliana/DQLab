-- Menggunakan WHERE
-- Menampilkan data dengan nama produk Tas Travel Organizer DQLab
SELECT * 
FROM 
	ms_produk 
WHERE 
	nama_produk = 'Tas Travel Organizer DQLab';
    
-- Menggunakan Operand OR
-- OR digunakan untuk memfilter data dengan syarat 
-- SALAH SATU di antara beberapa kondisi dapat terpenuhi
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
-- Menampilkan produk yang memiliki harga > Rp.50000
SELECT * 
FROM 
	ms_produk 
WHERE 
	harga > 50000;		
    
-- Menggunakan Operand AND
-- AND digunakan untuk memfilter dengan syarat
-- dua atau lebih kondisi HARUS terpenuhi
-- Jika salah satu kondisi tidak terpenuhi, data tidak akan diambil
SELECT * 
FROM 
	ms_produk 
WHERE 
	nama_produk = 'Gantungan Kunci DQLab' 
AND 
	harga < 50000;	

-- Mana Filter yang Akan Mengeluarkan Hasil?
-- A
SELECT * 
	FROM ms_produk 
WHERE 
	harga = '50000' -- kolom harga memiliki data type number,
					-- penggunaan ' '  digunakan untuk sting atau date
AND 
	harga < 50000;

-- B 
-- JAWABAN BENAR
SELECT * 
FROM 
	ms_produk 
WHERE 
	harga > 50000 
OR 
	harga < 50000;
    
-- C
SELECT * 
FROM 
	ms_produk 
WHERE 
	nama_produk = 'Flashdisk DQLab 32 GB' 
AND 				-- AND mengharuskan kedua kondisi harus terpenuhi.
					-- Dalam tabel ini, tidak ada nama produk dengan 
                    -- dua nama sekaligus
	nama_produk = 'Gantungan Kunci DQLab'

-- D 
SELECT * 
FROM 
	ms_produk 
WHERE 
	nama_produk = 'Flashdisk DQLab 32 GB' 
AND 
	harga= '50000' 	-- Kasus serupa dengan pilihan A