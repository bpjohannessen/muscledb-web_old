SELECT 
	a.id,
	a.name,
	a.lat_name
FROM 
	tbl_arteries a
INNER JOIN 
	tbl_link_arteries la
ON 
	a.id = la.artery_id AND
	la.muscle_id = 98;