select
la.id,
a.name as artery_name,
a.lat_name as artery_latinName,
m.id as ArteryMuscles_id,
m.lat_name as ArteryMuscles_latinName,
m.name as ArteryMuscles_name,
gt.id as MuscleGroups_id,
gt.name as MuscleGroups_name,
gt.lat_name as MuscleGroups_latinName
from tbl_link_arteries as la
INNER JOIN tbl_arteries a on a.id = la.artery_id
INNER JOIN tbl_muscles m on m.id = muscle_id
INNER JOIN view_grouptree gt on m.musclegroup_id = gt.bottomgroupid
WHERE la.artery_id = @id