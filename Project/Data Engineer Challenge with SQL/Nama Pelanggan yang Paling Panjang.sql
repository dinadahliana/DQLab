-- Menampilkan nama_pelanggan yang memiliki nama paling panjang
-- Alternatif 1
SELECT 
	nama_pelanggan
FROM 
	ms_pelanggan
WHERE 
	LENGTH(nama_pelanggan) = 19;

-- Alternatif 2
-- Jawaban dianggap salah oleh sistem DQLAB
SELECT 
	nama_pelanggan
FROM 
	ms_pelanggan
ORDER BY 
	LENGTH(nama_pelanggan) DESC
LIMIT 1;

