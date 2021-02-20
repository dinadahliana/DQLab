-- Proyek Pekerjaan 
-- Analisis Penjualan Part 1
-- Laporan yang diminta
	-- 1. Total jumlah seluruh penjualan (total/revenue).
	-- 2. Total quantity seluruh produk yang terjual.
	-- 3.Total quantity dan total revenue untuk setiap kode produk.
    
-- 1. Total jumlah seluruh penjualan (total/revenue).
SELECT 
	SUM(total)  total 
FROM  
	tr_penjualan;
    
-- 2. Total quantity seluruh produk yang terjual.
SELECT 
	SUM(qty) qty 
FROM 
	tr_penjualan;
    
-- 3. Total quantity dan total revenue untuk setiap kode produk.
SELECT 
	kode_produk, 
	SUM(qty) qty, 
    SUM(total) as total 
FROM  
	tr_penjualan
GROUP BY 
	kode_produk;