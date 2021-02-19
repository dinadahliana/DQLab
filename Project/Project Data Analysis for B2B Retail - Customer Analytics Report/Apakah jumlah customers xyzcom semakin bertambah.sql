-- Menampilkan pebandingan total jumlah customers yang registrasi di periode saat ini 
-- dengan total jumlah customers yang registrasi diakhir periode sebelumnya.

SELECT 
	quarter,
	COUNT(DISTINCT customerID) AS total_customers
FROM
(
  SELECT 
	  customerID,
	  createDate,
	  QUARTER(createDate) AS quarter
  FROM
	  customer
  WHERE 
	  createDate 
  BETWEEN
	  '2004-01-01' AND '2004-06-30'
) tabel_b
GROUP BY 
	quarter;

