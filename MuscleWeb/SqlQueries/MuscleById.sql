SELECT 
    m.id as id,
    m.origo as origo,
    m.functio as functio,
    m.insertio as insertio,
    m.name as name,
    m.lat_name as latinName,
    ifnull(m.comment, 'N/A') as comment,
    m.image as image,
    m.artery as artery_id,
    m.vein as vein_id,
    m.nerve as nerve_id,
    (SELECT a.lat_name FROM tbl_arteries a WHERE a.id = m.artery) AS artery,
    (SELECT v.lat_name FROM tbl_veins v WHERE v.id = m.vein) AS vein,
    (SELECT n.lat_name FROM tbl_nerves n WHERE n.id = m.nerve) AS nerve,

    gt.id as MuscleGroups_id,
    gt.name as MuscleGroups_name,
    gt.lat_name as MuscleGroups_latinName,

    (SELECT aa.id FROM tbl_arteries aa WHERE aa.id = la.artery_id) as muscleArteries_id,
    (SELECT aa.name FROM tbl_arteries aa WHERE aa.id = la.artery_id) as muscleArteries_name,
    (SELECT aa.lat_name FROM tbl_arteries aa WHERE aa.id = la.artery_id) as muscleArteries_latinName

FROM 
    tbl_muscles as m
INNER JOIN view_grouptree gt on m.musclegroup_id = gt.bottomgroupid
INNER JOIN tbl_link_arteries la on m.id = la.muscle_id
WHERE m.id = @id;

