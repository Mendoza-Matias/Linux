# Linux

## Comandos de Linux

- **Abrir terminal:** `CTRL + ALT + T`
- **Ruta donde estoy parado:** `pwd`
- **Contenido del directorio:** `ls`
- **Moverme entre directorios:** `cd <ruta>`
- **Crear carpeta:** `mkdir <nombre>`
- **Copiar contenido de una carpeta a otra:** `cp -r carpeta1/* carpeta2`
- **Eliminar carpeta vacía:** `rmdir <nombre>`
- **Eliminar contenido de carpeta con directorios:** `rm -r carpeta/*`
- **Renombrar o mover:** `mv`
- **Manual de los comandos:** `man`
- **Ingresar valores por consola:** `read -p "Ingresa un valor" numA`
- **Modificar los modos del usuario:** `chmod +x <archivo>`
- **Sugerencias de comandos:** `man grep`
- **Seleccionar varias lineas:** `CTRL + V`
- **Cortar:**`CC`
- **Pegar:** `PP`
- **Elinar:** `DD`
- **Redireccionar salida a un archivo:** `> archivo.txt`
- **Redireccionar salida a un archivo (agregar al final):** `>> archivo.txt`
- **Ver contenido de un archivo:** `cat archivo.txt`
- **Ver contenido de un archivo paginado:** `less archivo.txt`
- **Buscar dentro de un archivo:** `grep "texto" archivo.txt`
- **Buscar dentro de un archivo (ignorar mayusculas/minusculas):** `grep -i "texto" archivo.txt`
- **Buscar dentro de un archivo (mostrar numero de concordancia):** `grep -n "texto" archivo.txt`
- **No equal:**`-ne`
- **Equal:**`-eq`
- **Greater than:**`-gt`
- **Greater than or equal:**`-ge`
- **Less than:**`-lt`
- **Less than or equal:**`-le`
- **If:** `if [ condicion ]; then ... fi`
- **Else:** `else`
- **Else if:** `elif`
- **For:** `for var in lista; do ... done`
- **While:** `while [ condicion ]; do ... done`
- **Case:** `case variable in valor1) ... ;; valor2) ... ;; esac`
- **Dar permiso de ejecución:** `chmod +x script.sh`
---

### ¿Qué es un script?

Un script es un programa informático que se ejecuta por un intérprete de comandos. Se utiliza para interactuar con el sistema, automatizar tareas, entre otras funciones.

### SUDO
Super user do (yo como super usuario hago)
Persona que instalo el sistema operativo
- **Comando SUDO:** `sudo <comando>`
### RUT
administrador del sistema
- **Cambiar a usuario root:** `sudo su`
- **Salir de usuario root:** `exit`

### Grupos y usuarios
¿Qué es un grupo?
Es una etiqueta que se le asigna a un conjunto de usuarios para facilitar la administración de permisos y accesos en un sistema operativo.

- **Crear un grupo:** `sudo groupadd <nombre_grupo>`
- **Eliminar un grupo:** `sudo groupdel <nombre_grupo>`
- **Crear usuario con toda la información:** `sudo useradd -m -d /home/<nombre_usuario> -s /bin/bash -g <nombre_grupo> -G <nombre_grupo> <nombre_usuario>`
- **-m:** crea el directorio home del usuario
- **-d:** especifica la ruta del directorio home
- **-s:** especifica el intérprete de comandos (shell) del usuario
- **-g:** especifica el grupo principal del usuario
- **-G:** especifica grupos adicionales a los que pertenece el usuario
- **Dar permisos de super usuario a un usuario:** `usermod -G sudo <nombre_usuario>`
- **-G:** especifica grupos adicionales a los que pertenece el usuario
- **sudo:** grupo de super usuarios

### Permisos de archivos y carpetas
- **Ver permisos de archivos y carpetas:** `ls -l`
- **Asignar permisos** `chmod <permisos> <archivo/carpeta>`

-**-:** archivo de texto
-**d:** directorio

### Usuario grupo y otros
- **r:** permiso de lectura
- **w:** permiso de escritura
- **x:** permiso de ejecución

### Sistema octal
- **4:** permiso de lectura
- **2:** permiso de escritura
- **1:** permiso de ejecución
- **0:** sin permiso
- **Todos los permisos:** `7` (4+2+1)
- **Lectura y escritura:** `6` (4+2)
- **Lectura y ejecución:** `5` (4+1)