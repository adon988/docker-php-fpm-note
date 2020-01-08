#!/bin/bash

apt-get update
apt-get install vim -y
pecl install amqp
/usr/local/bin/docker-php-ext-enable amqp
apt-get install -y libgmp-dev
/usr/local/bin/docker-php-ext-install sockets
apt-get install -y zlib1g-dev libicu-dev g++
/usr/local/bin/docker-php-ext-configure intl
/usr/local/bin/docker-php-ext-install intl
apt-get -y install freetds-dev libsybdb5
ln -s /usr/lib/x86_64-linux-gnu/libsybdb.so /usr/lib/libsybdb.so
/usr/local/bin/docker-php-ext-install mssql pdo_dblib
/usr/local/bin/docker-php-ext-configure calendar
/usr/local/bin/docker-php-ext-install calendar
/usr/local/bin/docker-php-ext-configure zip --with-libzip
/usr/local/bin/docker-php-ext-install zip
rm /etc/apt/preferences.d/no-debian-php
apt-get -y install libxml2-dev php-soap
/usr/local/bin/docker-php-ext-install soap
apt-get -y install libxslt-dev
/usr/local/bin/docker-php-ext-install xsl
/usr/local/bin/docker-php-ext-install pcntl bcmath gmp exif opcache pgsql
apt-get -y install freetds-dev libsybdb5
ln -s /usr/lib/x86_64-linux-gnu/libsybdb.so /usr/lib/libsybdb.so
/usr/local/bin/docker-php-ext-install mysqli pdo pdo_mysql
/usr/local/bin/docker-php-ext-install gd
/usr/local/bin/docker-php-ext-install pdo_mysql
pecl install swoole -yes
/usr/local/bin/docker-php-ext-enable swoole -yes
echo 'extension=swoole.so' > /usr/local/etc/php/conf.d/20-swoole.ini
