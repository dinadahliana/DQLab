-- Fungsi Skalar Matematika - ABS()
SELECT
	studentID,
	FirstName,
	LastName,
	Semester1,
	Semester2,
	ABS(MarkGrowth) as MarkGrowth
FROM
	students;

-- Tugas Praktek
-- Gunakan fungsi MOD() untuk menghitung nilai sisa jika nilai Semester1 dibagi 2 
-- dan fungsi EXP() untuk menghitung nilai eksponensial dari nilai MarkGrowth
SELECT
	studentID,
	firstname,
	lastname,
	mod(semester1,2) as Semester1,
	Semester2,
	exp(MarkGrowth)
FROM
	students;				