SELECT
    lv.vein_id as id,
    (SELECT vv.name FROM tbl_veins vv WHERE vv.id = lv.vein_id) as Vein_name,
    (SELECT vv.lat_name FROM tbl_veins vv WHERE vv.id = lv.vein_id) as Vein_latinName,

    (SELECT m.id FROM tbl_muscles m WHERE m.id = lv.muscle_id) as VeinMuscles_id,
    (SELECT m.name FROM tbl_muscles m WHERE m.id = lv.muscle_id) as VeinMuscles_name,
    (SELECT m.lat_name FROM tbl_muscles m WHERE m.id = lv.muscle_id) as VeinMuscles_latinName
FROM
    tbl_link_veins as lv
WHERE lv.vein_id = @id