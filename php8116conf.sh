#!/bin/bash

export DEBIAN_FRONTEND=noninteractive && apt-get update && \
    apt-get install -y software-properties-common && \
    apt-get install -y language-pack-en-base && \
    apt-get update && \
    apt-get -y install \
    apt-transport-https \
    apt-utils \
    autoconf \
    cron \
    curl \
    libcurl4 \
    g++ \
    gcc    \
    git \
    lcov \
    libxml2-dev \
    locales \
    python3-pip \
    make \
    re2c \
    unixodbc-dev=2.3.6-0.1build1 unixodbc=2.3.6-0.1build1 odbcinst1debian2=2.3.6-0.1build1 odbcinst=2.3.6-0.1build1 \
    nginx \
    nano \
    vim \
    iputils-ping \
    supervisor \
    dos2unix \
    mc \
    rsyslog \
    libc-dev \
    pkg-config \
    libmcrypt-dev \
    unzip && apt-get clean

locale-gen en_US.UTF-8

# set env to use UTF
LANG='en_US.UTF-8'
LANGUAGE='en_US:en' 
LC_ALL='en_US.UTF-8'

apt-get install dialog autoconf debconf mlocate wget vim net-tools nmap -y
apt-get install libcurl4-openssl-dev -y
apt-get install libpng-dev -y
apt-get install libonig-dev -y
apt-get install libzip-dev -y
apt-get install libsqlite3-dev/focal-updates -y
apt-get install libjpeg-dev/focal -y
apt-get install libxpm-dev/focal-updates -y
apt-get install libexpat1-dev/focal-updates -y
apt-get install libxslt1-dev/focal-updates -y
apt-get install libsodium-dev/focal -y
apt-get install libsocket++-dev/focal -y
apt-get install libssh-dev/focal-updates -y
apt-get install libfreetype-dev/focal-updates -y
apt-get install libreadline-gplv2-dev/focal -y

cd /home
wget https://www.php.net/distributions/php-8.1.21.tar.gz
tar xzf php-8.1.21.tar.gz
cd php-8.1.21/

./configure --prefix=/opt/php/ --with-mysqli --with-mysql-sock --with-pdo-mysql --enable-fpm --with-curl --enable-gd --enable-mbstring --with-zip --enable-bcmath --with-openssl --with-xsl --with-expat --with-jpeg --with-xpm --with-zlib --enable-gd  --enable-mbstring  --enable-bcmath  --enable-bcmath --enable-soap --enable-fpm --with-sodium --enable-sockets --with-pear --with-freetype --with-readline --enable-intl --enable-fpm --with-fpm-acl
