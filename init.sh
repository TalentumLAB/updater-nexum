#!/bin/bash

cp ./jq-linux64 /bin/jq

echo "@reboot /bin/bash /git/updater-nexum/docker-compose-update.sh" >> /var/spool/cron/crontabs/ramiro

chmod +x ./*.sh