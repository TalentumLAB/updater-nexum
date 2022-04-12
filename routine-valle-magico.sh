#!/bin/sh
echo "--------------"
echo "Start process - Clear Container"
sh /repositories/clear-container.sh
echo "--------------"
echo ""
echo "--------------"
echo "docker compose updater"
sh /repositories/docker-compose-update.sh
echo "--------------"
echo ""
