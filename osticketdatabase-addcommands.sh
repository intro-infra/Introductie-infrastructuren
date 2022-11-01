#! /bin/bash

# Update the list of available software

change this line in command to update

# Upgrade the system

change this line in command to upgrade

# Install mysql-server

change this line to install mysql-server

# change directory to /etc/mysql/mysql.conf.d

change this line to change directory to /etc/mysql/mysql.conf.d

# accept sql queries from all hosts (0.0.0.0)
# change 127.0.0.0 to 0.0.0.0 in file mysql.conf

sudo sed -i 's/127.0.0.1/0.0.0.0/g' mysqld.cnf

# Start the service mysql

change this line to start the service mysql

# create database with name osticket
sudo mysql -e "CREATE DATABASE osticket;"
# create USER admin (can login from random host) with password osticket
sudo mysql -e "CREATE USER 'admin'@'%' IDENTIFIED BY 'osticket';"
# grant all privileges on osticket to  user admin
sudo mysql -e "GRANT ALL PRIVILEGES ON osticket.* TO 'admin'@'%';"
#  flush privileges
sudo mysql -e "FLUSH PRIVILEGES;"

# change directory to the home directory

change this line to change directory to the home directory

# restart the mysql service

change this line to restart the service mysql
