#!/bin/bash
# Este script permite cambiar el nombre de la base de datos en las variables de entorno del docker que tiene el juego de Valle Magico
# pamolinar
# 14 April 2022

# Obtenemos la Mac.
mac_file="/var/sec/MacLap"

vistatus_file="/var/sec/.vistatus"
vistatus=$(<"${vistatus_file}")

# Si el archivo de mac no existe llamamos vi_autoload el cual esta encargado de esta tarea. 
if [ ! -f $mac_file ]; then
	/bin/bash /var/sec/vi_autoload.sh 
fi 

# validamos que exista el archivo de mac antes de cambiar el archivo. 
if [ -f $mac_file ]; then
	if [ "$vistatus" = "INSTALLED" ]
	then
		mac=$(<"${mac_file}")

		#Archivo a reemplazar
		file="/repositories/jrgranada/valle-magico-i3lap/docker-compose.yml"


		#Se modifica el archivo. 
		sed -i "s/talentumehs_valle_magico/vallem_db_lap_"$mac"/g" $file
	fi 
fi

