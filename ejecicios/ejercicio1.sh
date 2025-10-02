#!/bin/bash

# Leer datos del usuario
read -p "Ingresa el nombre del nuevo usuario: " user
read -p "Ingresa el nombre del nuevo grupo: " group

# Obtener la fecha actual
DATE=$(date '+%Y-%m-%d %H:%M:%S')

# Verificar si el usuario ya existe
if [ $(grep -c "^$user:" /etc/passwd) -eq 0 ]; then

    # Verificar si el grupo ya existe
    if [ $(grep -c "^$group:" /etc/group) -eq 0 ]; then

        # Crear grupo y usuario
        sudo groupadd "$group"
        sudo useradd -m -d "/home/$user" -s /bin/bash -g "$group" -G sudo "$user"
        sudo passwd "$user"

        # Crear carpeta proyectos
        sudo mkdir -p "/home/$user/proyectos"
        sudo chmod 750 "/home/$user/proyectos"

        # Copiar contenido de /etc/skel a proyectos
        sudo cp -r /etc/skel/. "/home/$user/proyectos"
        sudo chown -R "$user:$group" "/home/$user/proyectos"

        # Registrar información en un archivo
        echo "Fecha: $DATE / Usuario: $user / Grupo: $group" | sudo tee -a "/home/$user/proyectos/registro_usuarios.txt" > /dev/null
        sudo cat "/home/$user/proyectos/registro_usuarios.txt"

    else
        echo "El grupo '$group' ya existe."
    fi

else
    echo "El usuario '$user' ya existe."
fi
