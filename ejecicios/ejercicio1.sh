#!/bin/bash

read -p "Ingresa el nombre del nuevo usuario " user
read -p "Ingresa el nombre del nuevo grupo " group

if [ $(grep -c "$group" /etc/group ) -eq 0 ]
then
       sudo groupadd $group 

       sudo useradd -m -d /home/$user/ -s /bin/bash -g $group -G sudo  $user 
	
       sudo passwd $user
else
	echo The group - $group - already exist
fi
	
	 sudo mkdir /home/$user/proyectos
	 sudo chmod 777 /home/$user/proyectos
	 sudo touch /home/$user/proyectos/registro_usuario02.txt
	 sudo chown -R $user:$group /home/$user/proyectos
	 sudo ls -l /home/$user/proyectos
    	 sudo cp -r /etc/skel/ /home/$user/proyectos 
	 echo hola > /home/$user/proyectos/registro_usuario2.txt
	 sudo cat /home/$user/proyectos/registro_usuario2.txt
