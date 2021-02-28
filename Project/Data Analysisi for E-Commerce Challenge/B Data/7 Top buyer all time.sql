-- top 5 buyer 
SELECT
	u.user_id,
	u.nama_user,
	SUM(o.total) AS total_belanja
FROM 
	users u
INNER JOIN
	orders o
ON 
	u.user_id = o.buyer_id
GROUP BY 
	u.user_id
ORDER BY 
	total_belanja DESC
LIMIT 5;