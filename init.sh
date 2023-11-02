#!/bin/bash

cp /git/updater-nexum/jq-linux64 /bin/jq

chmod +x /bin/jq

echo "@reboot /bin/bash /git/updater-nexum/docker-compose-update.sh" >> /var/spool/cron/crontabs/root

zip --version

check_error_zip="$?"

echo "$check_error_zip"

if [[ check_error_zip -eq 0 ]]; then

    echo "zip is installed"
else
    wget -O /git/updater-nexum/unzip_6.0-25ubuntu1_amd64.deb http://archive.ubuntu.com/ubuntu/pool/main/u/unzip/unzip_6.0-25ubuntu1_amd64.deb
    dpkg -i /git/updater-nexum/unzip_6.0-25ubuntu1_amd64.deb
fi

unzip --version

check_error_unzip="$?"

echo "$check_error_unzip"

if [[ check_error_unzip -eq 0 ]]; then

    echo "unzip is installed"
else
    wget -O /git/updater-nexum/unzip_6.0-25ubuntu1_amd64.deb http://archive.ubuntu.com/ubuntu/pool/main/u/unzip/unzip_6.0-25ubuntu1_amd64.deb
    dpkg -i /git/updater-nexum/unzip_6.0-25ubuntu1_amd64.deb
fi

chmod +x /git/updater-nexum/*.sh
