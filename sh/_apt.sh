
#locale-gen en_US.UTF-8
#php -i|grep 'php.ini' #wir brauchen nicht

sudo apt-get update

sudo apt-get -y install php7.3

sudo apt-get -y install sqlite3
sudo apt-get -y install php7.3-sqlite3

sudo apt-get -y install mongodb
sudo apt-get -y install php7.3-mongodb

sudo apt-get -y install xml
sudo apt-get -y install php7.3-xml

sudo apt-get -y install php-pear php7.3-dev 
sudo pecl install trader

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer


#composer require mongodb/mongodb
#ps aux

#sudo systemctl status mongod
#mongos --configdb replsetname/localhost:27010 --port 27011

