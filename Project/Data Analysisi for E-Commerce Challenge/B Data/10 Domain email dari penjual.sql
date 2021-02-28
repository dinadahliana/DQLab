SELECT 
	DISTINCT SUBSTRING_INDEX(u.email, "@", -1) AS domain
FROM 
	users u 
INNER JOIN 
	orders o 
ON 
	u.user_id = o.seller_id;