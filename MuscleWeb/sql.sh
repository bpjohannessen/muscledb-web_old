cd /home/bp/www/fettenajs.com/public_html/med/publish
sqlite3 muscles.db '
delete from musclesearch;
insert into musclesearch
select 
    id,
    lat_name,
    name,
    origo,
    insertio,
    functio
from 
    tbl_muscles;'