#!/bin/bash
#######################################
# echo help tekst
#######################################

echo -e "\n\n"
echo "    This script checks if the directory $(tput setaf 2)/etc/mysql/mysql.conf.d $(tput setaf 7) exists"
echo "    If that directory exists mysql is probably installed"
echo -e "    It further checks if the database service $(tput setaf 2)mysql $(tput setaf 7)is running \n\n"

##########################################################
# first check if directory /etc/mysql/mysql.conf.d exsists
##########################################################

if [[ -d /etc/mysql/mysql.conf.d ]]
then  
  echo "   $(tput setaf 2)OK $(tput setaf 7)The directory /etc/mysql/mysql.conf.d exists"
else
  echo "   $(tput setaf 1)FALSE $(tput setaf 7)The directory /etc/mysql/mysql.conf.d does not exist"
  echo "          Probably MySQL is not installed"
fi

###############################
# check if mysql is running
###############################

if pgrep mysql > /dev/null
then  
  echo -e "   $(tput setaf 2)OK $(tput setaf 7)The MySQL service is running \n\n\n"
else
  echo "   $(tput setaf 1)FALSE $(tput setaf 7)The MySQL service is not running \n\n\n"
fi