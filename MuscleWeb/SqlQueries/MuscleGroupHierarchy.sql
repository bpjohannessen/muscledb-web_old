select  
    gt.id as Id,
    gt.name as Name, 
    gt.lat_name as LatinName,    
    gt.parent_id as ParentId,
    gt.grouplevel,
    m.id as Muscles_Id,
    m.name as Muscles_Name,
    m.lat_name as Muscles_LatinName    
from 
    view_grouptree_topdown gt
left outer join
    tbl_muscles m 
on  gt.id = m.musclegroup_id            
where
    gt.topgroupid = @groupid          
order by gt.grouplevel desc