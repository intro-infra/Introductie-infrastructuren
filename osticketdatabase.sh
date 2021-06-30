#! /bin/bash
sudo apt-get update -y
sudo apt-get-upgrade -y
sudo apt-get install mysql-server -y
cd /etc/mysql/mysql.conf.d
sudo sed -i 's/127.0.0.1/0.0.0.0/g' mysqld.cnf
sudo service mysql start
sudo mysql -e "CREATE DATABASE osticket;"
sudo mysql -e "CREATE USER 'admin'@'%' IDENTIFIED BY 'osticket';"
sudo mysql -e "GRANT ALL PRIVILEGES ON osticket.* TO 'admin'@'%';"
sudo mysql -e "FLUSH PRIVILEGES"
cd ~
sudo service mysql restart
