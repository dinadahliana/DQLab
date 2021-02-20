-- Tugas Praktek: Menggunakan INNER JOIN (1/3)
-- Menggabungkan data yang SAMA pada tabel ms_item_warna 
-- dan ms_item_kategori
SELECT *
FROM
	ms_item_warna 
INNER JOIN
	ms_item_kategori 
ON 
	ms_item_warna.nama_barang = ms_item_kategori.nama_item;

-- tabel tr_penjualan dan tabel ms_produk
-- menampilkan seluruh data tabel tr_penjualan 
-- dan tabel ms_produk
SELECT * 
	FROM tr_penjualan;

SELECT * 
	FROM ms_produk;

-- Tugas Praktek: Menggunakan INNER JOIN (2/3)
-- menggabungkan data yang SAMA dari tabel tr_penjualan 
-- dan tabel ms_produk
SELECT *
FROM
	tr_penjualan 
INNER JOIN
	ms_produk 
ON 
	tr_penjualan.kode_produk = ms_produk.kode_produk;

-- Tugas Praktek: Menggunakan INNER JOIN (3/3)
SELECT
	tr_penjualan.kode_transaksi,
	tr_penjualan.kode_pelanggan,
	tr_penjualan.kode_produk,
	ms_produk.nama_produk,
	ms_produk.harga,
	tr_penjualan.qty,
	ms_produk.harga*tr_penjualan.qty as total
FROM 
	tr_penjualan 
INNER JOIN 
	ms_produk
ON 
	tr_penjualan.kode_produk = ms_produk.kode_produk;


