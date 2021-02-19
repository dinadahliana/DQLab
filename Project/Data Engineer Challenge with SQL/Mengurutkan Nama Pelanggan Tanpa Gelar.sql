-- Menampilkan nama_pelanggan dan urutkan hasilnya berdasarkan 
-- kolom nama_pelanggan dari yang terkecil ke yang terbesar (A ke Z), 
-- namun gelar tidak boleh menjadi bagian dari urutan. 
-- Contoh: Ir. Agus Nugraha harus berada di atas Heidi Goh.
SELECT 
	nama_pelanggan
FROM 
	ms_pelanggan
ORDER BY 
	TRIM(LEADING 'Ir. ' FROM nama_pelanggan);

