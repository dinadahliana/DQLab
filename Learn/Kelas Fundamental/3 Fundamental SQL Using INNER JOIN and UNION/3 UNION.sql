-- Tabel yang Akan Digabungkan
-- Menampilkan seluruh data tabel_A dan tabel_B
SELECT * 
FROM
	tabel_A;

SELECT * 
FROM
	tabel_B;

-- Menggunakan UNION
-- syarat : jumlah kolom sama dan urutan posisi kolom sama
SELECT * 
FROM
	tabel_A
UNION
SELECT * 
FROM
	tabel_B;

-- Menggunakan UNION dengan Klausa WHERE
SELECT * 
FROM
	tabel_A
WHERE
	kode_pelanggan = 'dqlabcust03'
UNION
SELECT * 
FROM
	tabel_B
WHERE
	kode_pelanggan = 'dqlabcust03';

-- Menggunakan UNION dan Menyelaraskan Kolom-Kolomnya.
SELECT
	customername, 
	contactname,
	city,
	postalcode
FROM 
	customers
UNION
SELECT 
	suppliername,
	contactname,
	city, 
	postalcode
FROM
	suppliers;

