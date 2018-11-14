--
-- Dette var den gamle spørringen. Erstattet av ny under
--
--
--
--
-- select
-- la.id,
-- a.name as artery_name,
-- a.lat_name as artery_latinName,
-- m.id as ArteryMuscles_id,
-- m.lat_name as ArteryMuscles_latinName,
-- m.name as ArteryMuscles_name,
-- gt.id as MuscleGroups_id,
-- gt.name as MuscleGroups_name,
-- gt.lat_name as MuscleGroups_latinName
-- from tbl_link_arteries as la
-- INNER JOIN tbl_arteries a on a.id = la.artery_id
-- INNER JOIN tbl_muscles m on m.id = muscle_id
-- INNER JOIN view_grouptree gt on m.musclegroup_id = gt.bottomgroupid
-- WHERE la.artery_id = @id

-- SELECT 
--     la.id as id,
--     (SELECT aa.id FROM tbl_arteries aa WHERE aa.id = la.artery_id) as muscleArteries_id,
--     (SELECT aa.name FROM tbl_arteries aa WHERE aa.id = la.artery_id) as muscleArteries_name,
--     (SELECT aa.lat_name FROM tbl_arteries aa WHERE aa.id = la.artery_id) as muscleArteries_latinName

-- FROM 
--     tbl_link_arteries as la
-- INNER JOIN tbl_arteries aa on  = gt.bottomgroupid
-- WHERE la.artery_id = @id;
SELECT 
    la.id as id,
    la.artery_id as link_artery_id,
    (SELECT aa.id FROM tbl_arteries aa WHERE aa.id = la.artery_id) as Artery_id,
    (SELECT aa.name FROM tbl_arteries aa WHERE aa.id = la.artery_id) as Artery_name,
    (SELECT aa.lat_name FROM tbl_arteries aa WHERE aa.id = la.artery_id) as Artery_latinName,
    
    (SELECT m.id FROM tbl_muscles m WHERE m.id = la.muscle_id) as ArteryMuscles_id,
    (SELECT m.name FROM tbl_muscles m WHERE m.id = la.muscle_id) as ArteryMuscles_name,
    (SELECT m.lat_name FROM tbl_muscles m WHERE m.id = la.muscle_id) as ArteryMuscles_latinName
FROM 
    tbl_link_arteries as la
WHERE la.artery_id = @id

