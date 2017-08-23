FROM dockerpinata/sqlite as database
COPY database.sql /database/database.sql
RUN cat /database/database.sql | sqlite3 /database/muscles.db

RUN sqlite3 /database/muscles.db 'delete from musclesearch; insert into musclesearch select id, lat_name, name, origo, insertio, functio from tbl_muscles;'

FROM microsoft/dotnet:1.1.2-sdk

COPY . /app

WORKDIR /app

RUN ["dotnet", "restore"]

RUN ["dotnet", "build"]

COPY --from=database /database/muscles.db /app/bin/Debug/netcoreapp1.1/

EXPOSE 5000/tcp

CMD ["dotnet", "run", "--server.urls", "http://*:5000"]
