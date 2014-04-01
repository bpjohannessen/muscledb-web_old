muscledb
========

Real-time searchable database for skeletal muscles. Includes muscle name in Latin and English. Origin, insertion (origo et insertio) and function is also searchable.

To try it in a isolated virtual machine using [Vagrant](https://www.vagrantup.com/):

    git clone https://github.com/bpjohannessen/muscledb
    cd muscledb
    echo myPassword > mysqlpw.txt
    nano db_credentials.php # Add database password
    vagrant up

Then simply navigate to http://localhost:8080

