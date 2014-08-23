muscledb
========

Real-time searchable database for skeletal muscles. Includes muscle name in Latin and English. Origin, insertion (origo et insertio) and function is also searchable.

To try it in a isolated virtual machine using [Vagrant](https://www.vagrantup.com/):

    git clone https://github.com/bpjohannessen/muscledb
    cd muscledb
    echo "myPassword" > mysqlpw.txt
    nano db_cred.php # Add database password
    vagrant up

Then simply navigate to http://localhost:8080

Disclaimer
-----------

This downloadable material does not provide medical advice. The downloadable material does only provide information for informational and educational purposes. If you are a medical student or student learning muscles, please seek advice at your university before using this information in your own education. The information found in litterature may differ from each other and it may differ from the information found in the downloadble material.
