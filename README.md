muscledb
========

Real-time searchable database for skeletal muscles. Includes muscle name in Latin and English. Origin, insertion (origo et insertio) and function is also searchable.

To try it in a isolated virtual machine using [Vagrant](https://www.vagrantup.com/):

    git clone https://github.com/bpjohannessen/muscledb
    cd /vagrant/
    echo "myPassword" > mysqlpw.txt
    nano db_cred.php # Add database password
    vagrant up

Then simply navigate to http://localhost:8080

The database can also be packed in a [Docker](https://www.docker.com/) container: 

	docker run --name muscledb -p 3306 -e MYSQL_DATABASE=db_muscles -e MYSQL_ROOT_PASSWORD=<password> -d mysql
	docker run -it -v /path/to/sql:/opt/ --link muscledb:mysql --rm mysql sh -c 'exec mysql -	h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD" db_muscles < /opt/db_muscles.sql'


Disclaimer
-----------

This downloadable material does not provide medical advice. The downloadable material does only provide information for informational and educational purposes. If you are a medical student or student learning muscles, please seek advice at your university before using this information in your own education. The information found in litterature may differ from each other and it may differ from the information found in the downloadble material.
