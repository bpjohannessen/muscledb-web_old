SELECT
    la.artery_id as id,
    (SELECT aa.name FROM tbl_arteries aa WHERE aa.id = la.artery_id) as Artery_name,
    (SELECT aa.lat_name FROM tbl_arteries aa WHERE aa.id = la.artery_id) as Artery_latinName,

    (SELECT m.id FROM tbl_muscles m WHERE m.id = la.muscle_id) as ArteryMuscles_id,
    (SELECT m.name FROM tbl_muscles m WHERE m.id = la.muscle_id) as ArteryMuscles_name,
    (SELECT m.lat_name FROM tbl_muscles m WHERE m.id = la.muscle_id) as ArteryMuscles_latinName
FROM
    tbl_link_arteries as la
WHERE la.artery_id = @id