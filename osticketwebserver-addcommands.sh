#!/bin/bash

# update the list of available software

change this line in command to update

# upgrade the system

change this lin in command to upgrade

# install apache2

change this line to install apache2

# install php and other requires software

sudo apt install php libapache2-mod-php php-{fpm,pear,imap,apcu,intl,cgi,common,mbstring,net-socket,gd,xml-util,mysql,bcmath} -y

# install required software "curl"

change this line to install software curl

# start service apache2

change this line to start service apache2

# enable apache2 so it automatically starts after reboot

sudo systemctl enable apache2

# install open source software "osticket"

wget https://github.com/osTicket/osTicket/releases/download/v1.15.4/osTicket-v1.15.4.zip

# install software "unzip"

change this line to install "unzip"

# unzip osticket in directory osTicket

sudo unzip osTicket-v*.zip -d osTicket

# verplaats directory osTicket onder de directory /var/www/html

change this line to move osTicket to /var/www/html

# change directory to /var/www/html/osTicket/upload/include

change this line to change directory to /var/www/html/osTicket/upload/include

# copy the file ost-sampleconfig.php to ost-config.php

sudo cp ost-sampleconfig.php ost-config.php

# change owner on directory /var/www to user and group www-data

sudo chown -R www-data:www-data /var/www/

# install software mysql-client for testing purposes
# to test connection to the database 

sudo apt install mysql-client-core-8.0 

# restart service apache2 

change this line to restart the service apache2
