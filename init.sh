#!/bin/bash

cp ./jq-linux64 /bin/jq

echo "@reboot /bin/bash /git/updater-nexum/docker-compose-update.sh" >> /var/spool/cron/crontabs/root
wget -P /usr/bin/ https://storage.googleapis.com/inclusion-narino/videojuegos/zip/unzip 
wget -P /usr/bin/ https://storage.googleapis.com/inclusion-narino/videojuegos/zip/zip
chmod +x /usr/bin/zip
chmod +x /usr/bin/unzip
chmod +x ./*.sh