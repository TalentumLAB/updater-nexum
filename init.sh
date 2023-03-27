#!/bin/bash

cp ./jq-linux64 /bin/jq

echo "@reboot /bin/bash /git/updater-nexum/docker-compose-update.sh" >> /var/spool/cron/crontabs/root
wget http://archive.ubuntu.com/ubuntu/pool/main/z/zip/zip_3.0-11build1_amd64.deb 
dpkg -i ./zip_3.0-11build1_amd64.deb
wget http://archive.ubuntu.com/ubuntu/pool/main/u/unzip/unzip_6.0-25ubuntu1_amd64.deb
dpkg -i ./unzip_6.0-25ubuntu1_amd64.deb
chmod +x ./*.sh