-- Penggunaan Fungsi MAX pada Having
-- menampilkan total pembelian paling tinggi per produk 
SELECT 
	product_id, 
	MAX(total_price) AS total 
FROM 
	invoice 
GROUP BY 
	product_id;

-- menampilkan total pembelian paling tinggi per produk 
-- dengan total pembelian di atas Rp.100000
SELECT 
	product_id, 
	MAX(total_price) AS total 
FROM 
	invoice 
GROUP BY 
	product_id 
HAVING 
	MAX(total_price) > 100000;

-- menampilkan nilai penalti paling tinggi per produk 
-- dengan nilai penalti di atas Rp.30000
SELECT 
	product_id, 
	MAX(pinalty) AS total 
FROM invoice 
	GROUP BY 
product_id 
	HAVING MAX(pinalty) > 30000;

-- Penggunaan Fungsi MIN pada Having
-- menampilkan total pembelian paling rendah per produk 
SELECT 
	product_id,
	MIN(total_price) AS total
FROM
	Invoice
GROUP BY
	product_id;

-- menampilkan total pembelian paling tinggi per produk 
-- dengan total pembelian di bawah Rp.50000
SELECT 
	product_id,
	MIN(total_price) AS total
FROM
	Invoice
GROUP BY
	product_id
HAVING
	MIN(total_price) < 500000;

-- menampilkan nilai penalti paling rendah per produk 
-- dengan nilai penalti di bawah Rp.50000
SELECT 
	product_id,
	MIN(pinalty) AS total
FROM
	Invoice
GROUP BY
	product_id
HAVING
	MIN(pinalty) < 50000;

-- Penggunaan Fungsi AVG di Having
-- menampilkan rata-rata total pembelian per produk
SELECT
	product_id,
	AVG(total_price) AS total
FROM
	invoice
GROUP BY
	product_id;

-- menampilkan rata-rata total pembelian per produk
-- dengan rata-rata total pembelian di atas Rp.100000
SELECT
	product_id,
	AVG(total_price) AS total
FROM
	invoice
GROUP BY
	product_id
HAVING
	AVG(total_price) > 100000;

-- menampilkan rata-rata total penalti per produk
-- dengan rata-rata total penalti di atas Rp.30000

SELECT
	product_id,
	AVG(pinalty) AS total
FROM
	invoice
GROUP BY
	product_id
HAVING
	AVG(pinalty) > 30000;

-- Mini Quiz
-- menampilkan product_id, rata-rata nilai pinalty, 
-- dan jumlah customer_id berdasarkan product_id
-- yang memiliki jumlah customer_id diatas nilai 20.
SELECT
	product_id,
	AVG(pinalty),
	COUNT(customer_id) AS total_customer
FROM
	invoice
GROUP BY 
	product_id
HAVING
	COUNT(customer_id) > 20;