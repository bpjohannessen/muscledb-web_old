#! /bin/bash

function build(){
dotnet restore MuscleWeb/
dotnet publish MuscleWeb/
}

function database()
{
build
rm -f MuscleWeb/bin/Debug/netcoreapp1.1/publish/muscles.db
cat MuscleWeb/bin/Debug/netcoreapp1.1/publish/database.sql | sqlite3 MuscleWeb/bin/Debug/netcoreapp1.1/publish/muscles.db

sqlite3 MuscleWeb/bin/Debug/netcoreapp1.1/publish/muscles.db '
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

}

function run()
{
database
cd MuscleWeb/bin/Debug/netcoreapp1.1/publish/ 
dotnet MuscleWeb.dll 
}

if [ $# -eq 0 ]; then 
    build
else 
    $1
fi 
