-- Menampilkan kode_produk, nama_produk, dan total_qty
-- yang paling banyak terjual dari segi kuantitas

-- Alternatif 1
SELECT 
	p.kode_produk AS kode_produk,
	p.nama_produk AS nama_produk,
	SUM(j.qty) AS total_qty
FROM 
	tr_penjualan_detail j
LEFT JOIN 
	ms_produk p
ON 
	j.kode_produk = p.kode_produk
GROUP BY 
	p.kode_produk,
	p.nama_produk
HAVING 
	SUM(j.qty) = (SELECT SUM(qty)
				  FROM tr_penjualan_detail
				  GROUP BY kode_produk
				  ORDER BY SUM(qty) DESC
				  LIMIT 1);

-- Alternatif 2
SELECT 
	p.kode_produk AS kode_produk,
	p.nama_produk AS nama_produk,
	SUM(j.qty) AS total_qty
FROM 
	tr_penjualan_detail j
LEFT JOIN 
	ms_produk p
ON 
	j.kode_produk = p.kode_produk
GROUP BY 
	p.kode_produk,
	p.nama_produk
HAVING 
	SUM(j.qty) = 7
