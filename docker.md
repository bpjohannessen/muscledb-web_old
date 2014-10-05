### Run muscledb in docker 

Running muscledb in (Docker)[https://www.docker.com/] is simple: 
		# Set up the database:
		docker run --name muscledb -p 3306:3306 -e MYSQL_DATABASE=db_muscles -e MYSQL_ROOT_PASSWORD=<password> -d mysql
 		docker run -it --link muscledb:mysql --rm -v /vagrant:/opt/ mysql sh -c 'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD" db_muscles < /opt/db_muscles.sql'
		# Make sure db_cred.php has 'muscledb' as dbhost and the mysql password is correct. Then build the website container: 
		docker build -t muscledb/muscledb .
		# Run the website and link it to the database: 
	        sudo docker run -p 8080:80 -v /path/to/muscledb:/var/www/ --link muscledb:muscledb -d -t andmos/muscledb	
Navigate to localhost:8080
