-- Menggunakan Prefix pada Nama Kolom
SELECT 
	ms_produk.kode_produk 	-- ms_produk di depan nama kolom 
							-- merupakan prefix yang menunjukkan 
                            -- asal tabel kolom tersebut
FROM 
	ms_produk;	
    
-- Penggunaan Prefix untuk menampilkan seluruh data dari sebuah tabel
SELECT 
	ms_produk.*
FROM 
	ms_produk;	
    
-- Menggunakan Alias pada Kolom
-- Alias digunakan untuk merubah nama kolom yang akan ditampilkan,
-- namun tidak akan merubah nama kolom pada schema
SELECT 
	no_urut AS nomor,
	nama_produk AS nama 
FROM ms_produk;

-- Menghilangkan Keyword 'AS'
-- Penggunaan alias dapat dilakukan tanpa 'AS'
SELECT 
	no_urut nomor,
	nama_produk nama 
FROM ms_produk;		

-- Menggabungkan Prefix dan Alias
-- ms_produk di depan nama kolom harga 
-- merupakan prefix yang merujuk asal tabel kolom.
-- sementara 'harga_jual' merupakan alias untuk kolom harga 
SELECT 
	ms_produk.harga AS harga_jual 	
FROM 
	ms_produk;			

-- Menggunakan Alias pada Table
SELECT * FROM ms_produk t2;		

-- Prefix dengan Alias Table
SELECT 
	t2.nama_produk, 
	t2.harga 
FROM 
	ms_produk t2;		
    
