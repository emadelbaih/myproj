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
    php8.1 \
    php8.1-common \
    php8.1-curl \
    php8.1-dom \
    php8.1-gd \
    php8.1-fpm \
    php8.1-opcache \
    php8.1-zip \
    php8.1-mbstring \
    php8.1-cli \
    php8.1-dev \
    php8.1-sqlite3 \
    php8.1-bcmath \
    php-amqplib \
    python3-pip \
    re2c \
    #unixodbc-dev=2.3.6-0.1build1 unixodbc=2.3.6-0.1build1 odbcinst1debian2=2.3.6-0.1build1 odbcinst=2.3.6-0.1build1 \
    unixodbc-dev \
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
apt-get install unixodbc-dev/focal -y
