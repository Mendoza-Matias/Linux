#!/bin/bash

read -p "Ingresa el nombre del nuevo usuario " user
read -p "Ingresa el nombre del nuevo grupo " group

if [ $(grep -c "$group" /etc/group) -eq 0 ]
then
       sudo groupadd $group 

       sudo useradd -m -d /home/$user/ -s /bin/bash -g $group -G sudo $user
	
       sudo passwd $user
else
	echo The group - $group - already exist
fi
