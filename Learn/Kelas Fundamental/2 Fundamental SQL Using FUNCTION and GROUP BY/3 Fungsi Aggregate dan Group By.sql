-- FUNGSI AGGREGATE

-- SUM()
SELECT
	sum(semester1) as Total_1,
	sum(semester2) as Total_2
FROM
	students;

-- COUNT()
-- Menghitung jumlah siswa 
SELECT
	count(firstname) as total_student
FROM
	students;

-- AVG( )
-- Menghitung nilai rata-rata siswa di semester 1 dan 2
SELECT
	AVG(semester1) as avg_1,
	AVG(semester2) as avg_2
FROM
	students;

-- Tugas Praktek
-- Menentukan nilai paling rendah dan paling tinggi
-- di semester 1 dan 2
SELECT
	min(semester1) as min1,
	max(semester1) as max1,
	min(semester2) as min2,
	max(semester2) as max2
FROM
	students;

-- GROUP BY
-- Group by Single Column
-- mengelompokkan data total order dan total penjualan (total_price) 
-- per provinsi
SELECT
	province,
	count(distinct order_id) as total_order,
	sum(item_price) as total_price
FROM 
	sales_retail_2019
GROUP BY
	province;

-- Group by Multiple Column
-- mengelompokkan data total order dan total penjualan (total_price) 
-- untuk setiap brand di tiap provinsi
SELECT
	province,
	brand,
	count(distinct order_id) as total_order,
	sum(item_price) as total_price
FROM 
	sales_retail_2019
GROUP BY 
	province, 
	brand;		

-- Fungsi Aggregate dengan Grouping
-- Menampilkan jumlah order dan total penjualan per provinsi
SELECT
	province,
	count(distinct order_id) as total_unique_order,
	sum(item_price) as revenue
FROM 
	sales_retail_2019
GROUP BY 
	province;	


-- CASE WHEN
-- Tugas Praktek

SELECT 
	MONTH(order_date) AS order_month, 
	SUM(item_price) AS total_price,
	CASE
		WHEN sum(item_price) >= 30000000000 THEN 'Target Achieved'
		WHEN sum(item_price) <= 25000000000 THEN 'Less Performed'
		ELSE 'Follow Up'
		END as remark
FROM 
	sales_retail_2019
GROUP BY 
	MONTH(order_date);	