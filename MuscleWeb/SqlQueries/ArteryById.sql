select
id,
muscle_id,
artery_id,
(select a.name FROM tbl_arteries a WHERE a.id = artery_id) as artery_Name,
(select a.lat_name FROM tbl_arteries a WHERE a.id = artery_id) as artery_latinName,
(select m.id from tbl_muscles m WHERE m.id = muscle_id) as ArteryMuscles_id,
(select m.lat_name from tbl_muscles m WHERE m.id = muscle_id) as ArteryMuscles_latinName,
(select m.name from tbl_muscles m WHERE m.id = muscle_id) as ArteryMuscles_Name
from tbl_link_arteries
WHERE artery_id = @id