SELECT 
    m.id as id,
    m.origo as origo,
    m.functio as functio,
    m.insertio as insertio,
    m.name as name,
    m.lat_name as latinName,
    ifnull(m.comment, 'N/A') as comment,
    m.image as image,
    gt.id as MuscleGroups_id,
    gt.name as MuscleGroups_name,
    gt.lat_name as MuscleGroups_latinName
FROM 
    tbl_muscles as m
INNER JOIN view_grouptree gt on m.musclegroup_id = gt.bottomgroupid
WHERE m.id = @id        

