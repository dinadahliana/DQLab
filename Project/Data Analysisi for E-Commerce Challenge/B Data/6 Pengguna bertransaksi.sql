-- total pengguna bertransaksi
SELECT 
	COUNT(*) AS total_pengguna
FROM 
	users ;

-- pengguna pernah pembeli
SELECT 
	COUNT(DISTINCT buyer_id) AS total_pengguna
FROM 
	orders;

-- pengguna pernah penjual
SELECT 
	COUNT(DISTINCT seller_id) AS total_pengguna
FROM 
	orders;

-- tidak pernah bertransaksi
SELECT 
	COUNT(user_id) AS total_pengguna
FROM 
	users
WHERE 
	user_id NOT IN
		(SELECT 
			DISTINCT buyer_id
		FROM 
			orders 
		);
