#!/bin/bash

  #STEP 2 install python-dev
sudo apt-get install python3-dev -y

  
  #STEP 3 Install setuptools and pip (Python's Package Manager).
sudo apt-get install python3-setuptools python3-pip -y

  
  #STEP 4 Install virtualenv
sudo apt-get install virtualenv -y

  
  #STEP 5 Install MariaDB
sudo apt install mariadb-server -y
sudo service mysql restart
sudo apt-get install mariadb-client
sudo service mysql restart
sudo mysql_secure_installation
sudo service mysql restart


  
  #STEP 6 MySQL database development files
sudo apt-get install libmysqlclient-dev -y
sudo service mysql restart
  
    
  #STEP 7 Edit the mariadb configuration
sudo nano /etc/mysql/my.cnf
"""
[mysqld]
character-set-client-handshake = FALSE
character-set-server = utf8mb4
collation-server = utf8mb4_unicode_ci

[mysql]
default-character-set = utf8mb4
"""
  
  
  
  #STEP 8 
sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash


  #STEP 9 install Node.js 14
nvm install 14



  #STEP 10
node -v
sudo apt-get install redis-server

  #STEP 11  install Yarn
sudo apt-get install npm
npm install -g yarn


  #STEP 12 install wkhtmltopdf
sudo apt-get install xvfb libfontconfig wkhtmltopdf -y



  #STEP 13  Install bench via pip3
sudo pip3 install frappe-bench
bench --version


  #STEP 14 initilise the frappe bench & install frappe latest version
bench init frappe-bench
cd frappe-bench/
bench start

  #STEP 15 create a site in frappe bench
bench new-site  


