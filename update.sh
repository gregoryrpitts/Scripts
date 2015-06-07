#./bin/sh

echo Downloading Database from gregorypitts.com:/home/gregosh4/tmp/gregosh4_sda.sql

scp gregosh4@gregoryrpitts.com:/home/gregosh4/tmp/gregosh4_sda.sql ./gregosh4_sda.sql

while true; do
    read -p "Finished downloading... Do you want to import the Database?" yn
    case $yn in 
        [Yy]* ) break;;
        [Nn]* ) exit;;
        *) echo "Please answer yes or no";;
    esac
done

/applications/MAMP/library/bin/mysql -u gregosh4_sda -p gregosh4_sda < ~/Projects/database/sda/gregosh4_sda.sql
