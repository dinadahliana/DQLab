-- pembeli dengan frekuensi tertinggi 
-- tanpa menggunakan diskon
SELECT
	u.user_id,
	u.nama_user,
	COUNT(o.paid_at) AS frekuensi_belanja
FROM 
	users u
INNER JOIN
	orders o
ON 
	u.user_id = o.buyer_id
GROUP BY 
	u.user_id
HAVING 
	SUM(o.discount) = 0
ORDER BY 
	frekuensi_belanja DESC;