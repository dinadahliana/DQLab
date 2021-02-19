-- Menampilkan nama_pelanggan yang memiliki nama paling panjang (pada row atas), 
-- dan nama orang paling pendek (pada row setelahnya). 
-- Gelar menjadi bagian dari nama. Jika ada lebih dari satu nama yang paling 
-- panjang atau paling pendek, harus ditampilkan semuanya.

-- Alternatif 1
SELECT 
	nama_pelanggan
FROM 
	ms_pelanggan
WHERE 
	LENGTH(nama_pelanggan) = 	(SELECT MAX(LENGTH(nama_pelanggan))
								FROM ms_pelanggan)
OR 
	LENGTH(nama_pelanggan) = 	(SELECT MIN(LENGTH(nama_pelanggan))
								FROM ms_pelanggan)
ORDER BY
	LENGTH(nama_pelanggan) DESC;
    
-- Alternatif 2
SELECT 
	nama_pelanggan
FROM 
	ms_pelanggan
WHERE 
	LENGTH(nama_pelanggan) = 19
OR 
	LENGTH(nama_pelanggan) = 9
ORDER BY
	LENGTH(nama_pelanggan) DESC;

