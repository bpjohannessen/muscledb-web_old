SELECT
    lv.nerve_id as id,
    (SELECT nn.name FROM tbl_nerves nn WHERE nn.id = lv.nerve_id) as Nerve_name,
    (SELECT nn.lat_name FROM tbl_nerves nn WHERE nn.id = lv.nerve_id) as Nerve_latinName,

    (SELECT m.id FROM tbl_muscles m WHERE m.id = lv.muscle_id) as NerveMuscles_id,
    (SELECT m.name FROM tbl_muscles m WHERE m.id = lv.muscle_id) as NerveMuscles_name,
    (SELECT m.lat_name FROM tbl_muscles m WHERE m.id = lv.muscle_id) as NerveMuscles_latinName
FROM
    tbl_link_nerves as lv
WHERE lv.nerve_id = @id