#!/bin/bash
#######################################
# echo help tekst
#######################################

echo -e "\n\n"
echo "    This script checks if the file $(tput setaf 2)/var/www/html/osTicket/upload/setup/install.php $(tput setaf 7) exists"
echo "    If that file exists osTicket is probably correctly installed"
echo -e "    It further checks if the webserver $(tput setaf 2)Apache $(tput setaf 7)is running \n\n"

#####################################################################
# first check if file /var/www/html/osTicket/upload/index.php exsists
#####################################################################

if [[ -f /var/www/html/osTicket/upload/index.php ]]
then  
  echo "   $(tput setaf 2)OK $(tput setaf 7)The file /var/www/html/osTicket/upload/setup/install.php exists"
else
  echo "   $(tput setaf 1)FALSE $(tput setaf 7)The file /var/www/html/osTicket/upload/setup/install.php does not exist"
  echo "          Probably osTicket is not correctly installed"
fi

###############################
# check if mysql is running
###############################

if pgrep apache > /dev/null
then  
  echo -e "   $(tput setaf 2)OK $(tput setaf 7)The webserver Apache is running \n\n\n"
else
  echo "   $(tput setaf 1)FALSE $(tput setaf 7)The webserver Apache is not running \n\n\n"
fi