#!/bin/sh
echo "--------------"
echo "Start process - Clear Container"
sh ./clear-container.sh
echo "--------------"
echo ""
echo "--------------"
echo "docker compose updater"
sh ./docker-compose-update.sh jrgranada/valle-magico-i3lap
echo "--------------"
echo ""
