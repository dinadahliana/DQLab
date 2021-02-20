-- menyajikan data transaksi penjualan dengan total revenue >= IDR 100.000
-- total revenue diperoleh dengan mengkalikan qty dengan harga 
SELECT 
	kode_pelanggan, 
    nama_produk, 
    qty, 
    harga, 
    qty*harga AS total_revenue
FROM tr_penjualan
WHERE 
	qty*harga >= 100000
ORDER BY 
	total DESC;