muscledb
========

Real-time searchable database for skeletal muscles. Includes muscle name in Latin and English. Origin, insertion (origo et insertio) and function is also searchable.

To try it out using [Vagrant](https://www.vagrantup.com/):

    git clone https://github.com/bpjohannessen/muscledb
    cd muscledb
    cat myPassword > mysqlpass.txt
    nano db_credentials.php # Add database password
    vagrant up

Then simply navigate to http://localhost:8080

