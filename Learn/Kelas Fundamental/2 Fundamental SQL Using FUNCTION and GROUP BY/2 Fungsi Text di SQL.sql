-- CONCAT( )
-- CONCAT berfungsi menggabungkan data dari beberapa kolom 
-- Menggabungkan nama depan dan nama belakang tanpa spasi
SELECT
	studentID,
	CONCAT(firstname, lastname) as Name,
	Semester1,
	Semester2,
	MarkGrowth
FROM
	students;

-- SUBSTRING_INDEX( )
-- Mengekstrak alamat email siswa sebelum '@'
SELECT
	studentID,
	substring_index(Email, '@' , 1) as Name
FROM
	students;

-- SUBSTR( )
-- Mengekstrak nama depan siswa mulai dari huruf ke-2 
-- dan jumlah huruf yang diekstrak berjumlah 3 huruf
SELECT
	studentID,
	substr(firstname, 2, 3) as Initial
FROM 
	students;

-- LENGTH( )
-- Menghitung jumlah huruf nama depan siswa
SELECT
	studentID,
	firstname,
	length(firstname) as total_char
FROM
	students;

-- REPLACE( )
-- Mengganti domain email 'yahoo' menjadi 'gmail'
SELECT
	StudentID,
	Email,
	replace(email, 'yahoo', 'gmail') as New_Email
FROM
	students;
				
-- Tugas Praktek
-- Mengubah kolom FirstName menjadi seluruhnya kapital 
-- dan mengubah kolom LastName menjadi seluruhnya non-kapital
SELECT
studentID,
	UPPER(firstname) as firstname,
	LOWER(lastname) as lastname
FROM
	students;
