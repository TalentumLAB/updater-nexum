#!/bin/sh
docker kill $(docker ps -qf "name=valle_magico_*")
docker rm $(docker ps -aqf "name=valle_magico_*")
iptables -L
service docker restart