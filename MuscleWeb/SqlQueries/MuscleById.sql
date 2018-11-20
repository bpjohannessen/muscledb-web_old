SELECT 
    m.id as id,
    m.origo as origo,
    m.functio as functio,
    m.insertio as insertio,
    m.name as name,
    m.lat_name as latinName,
    ifnull(m.comment, 'N/A') as comment,
    m.image as image,
    m.vein as vein_id,
    m.nerve as nerve_id,
    (SELECT v.lat_name FROM tbl_veins v WHERE v.id = m.vein) AS vein,
    (SELECT n.lat_name FROM tbl_nerves n WHERE n.id = m.nerve) AS nerve,

    gt.id as MuscleGroups_id,
    gt.name as MuscleGroups_name,
    gt.lat_name as MuscleGroups_latinName,

    (SELECT aa.id FROM tbl_arteries aa WHERE aa.id = la.artery_id) as muscleArteries_id,
    (SELECT aa.name FROM tbl_arteries aa WHERE aa.id = la.artery_id) as muscleArteries_name,
    (SELECT aa.lat_name FROM tbl_arteries aa WHERE aa.id = la.artery_id) as muscleArteries_latinName,

    (SELECT vv.id FROM tbl_veins vv WHERE vv.id = lv.vein_id) as muscleVeins_id,
    (SELECT vv.name FROM tbl_veins vv WHERE vv.id = lv.vein_id) as muscleVeins_name,
    (SELECT vv.lat_name FROM tbl_veins vv WHERE vv.id = lv.vein_id) as muscleVeins_latinName,

    (SELECT nn.id FROM tbl_nerves nn WHERE nn.id = ln.nerve_id) as muscleNerves_id,
    (SELECT nn.name FROM tbl_nerves nn WHERE nn.id = ln.nerve_id) as muscleNerves_name,
    (SELECT nn.lat_name FROM tbl_nerves nn WHERE nn.id = ln.nerve_id) as muscleNerves_latinName

FROM 
    tbl_muscles as m
INNER JOIN view_grouptree gt on m.musclegroup_id = gt.bottomgroupid
INNER JOIN tbl_link_arteries la on m.id = la.muscle_id
INNER JOIN tbl_link_veins lv on m.id = lv.muscle_id
INNER JOIN tbl_link_nerves ln on m.id = ln.muscle_id
WHERE m.id = @id

