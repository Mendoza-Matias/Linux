#!/bin/bash

read -p "Ingresa el nombre del nuevo usuario " user
read -p "Ingresa el nombre del nuevo grupo " group

if [ $(grep -c "$user" /etc/passwd ) -eq 0 ]
then
   if [ $(grep -c "$group" /etc/group) -eq 0 ]
 then 	
       sudo groupadd $group 
       sudo useradd -m -d /home/$user/ -s /bin/bash -g $group -G sudo  $user 
       sudo passwd $user

       sudo mkdir /home/$user/proyectos
       sudo chmod 750 /home/$user/proyectos

       sudo cp -r /etc/skel/ /home/$user/proyectos
       sudo chown -R $user:$group /home/$user/proyectos

       echo Fecha $DATE / Usuario $user / Grupo $group | sudo tee -a /home/$user/proyectos/registro_usuarios.txt > /dev/null
       sudo cat /home/$user/proyectos/registro_usuarios.txt  
 else
	echo El usuario - $user - ya existe 
 fi
else
	echo El grupo - $group - ya existe
fi
