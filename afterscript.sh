#!/bin/bash

#install ODBC driver
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
curl https://packages.microsoft.com/config/ubuntu/20.04/prod.list > /etc/apt/sources.list.d/mssql-release.list
export DEBIAN_FRONTEND=noninteractive && apt-get update && ACCEPT_EULA=Y apt-get install -y msodbcsql17 mssql-tools

#install mcrypt
pecl channel-update pecl.php.net
pecl install mcrypt-1.0.5

export DEBIAN_FRONTEND=noninteractive && apt-get update && ACCEPT_EULA=Y apt-get -y install python3-pip python3-dev libxml2-dev libxslt1-dev antiword unrtf poppler-utils pstotext tesseract-ocr flac ffmpeg lame libmad0 libsox-fmt-mp3 sox libjpeg-dev swig zlib1g-dev libpulse-dev

pip3 install textract
pip3 install cpp-coveralls

PATH="/opt/mssql-tools/bin:${PATH}"
PATH="/opt/php/bin:${PATH}"

curl -sL https://deb.nodesource.com/setup_14.x | bash -

apt-get install -y nodejs gconf-service libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgbm1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget libgbm-dev libxshmfence-dev

npm -v

# MSSQL Stuff
apt-get update && pecl install -f sqlsrv-5.10.1 pdo_sqlsrv-5.10.1

npm install -g --unsafe-perm puppeteer@^17.1.0
npm link puppeteer
chmod -R o+rx /usr/lib/node_modules/puppeteer/.local-chromium


