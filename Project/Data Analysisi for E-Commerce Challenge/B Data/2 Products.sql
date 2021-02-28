USE dqlab_project;

-- melihat jumlah kolom
SELECT *
FROM 
	products
LIMIT 5;

-- menghitung jumlah baris
SELECT 
	COUNT(*)
FROM 
	products;

-- menghitung jumlah kategori
SELECT 
	COUNT(DISTINCT category) jumlah_categori
FROM 
	products;


