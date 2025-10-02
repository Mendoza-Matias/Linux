# Ejercicio práctico de Linux

## Enunciado

Eres administrador de un servidor Linux y tu tarea es organizar y automatizar algunos procesos para un proyecto. Deberás completar los siguientes pasos utilizando únicamente la terminal y los comandos vistos en clase:

1. **Estructura de carpetas**  
   - Crea una carpeta llamada `proyecto_linux` dentro de tu directorio personal.  
   - Dentro de `proyecto_linux`, crea las subcarpetas `docs`, `scripts` y `backup`.  
   - Crea un archivo de texto llamado `README.txt` dentro de `docs` con un breve mensaje de bienvenida.

2. **Usuarios y permisos**  
   - Crea un grupo llamado `desarrolladores`.  
   - Crea un usuario llamado `juan` que pertenezca al grupo `desarrolladores` y cuyo directorio home sea `/home/juan`.  
   - Asigna permisos de lectura y escritura al grupo `desarrolladores` en la carpeta `proyecto_linux`, pero que otros usuarios solo puedan leer los archivos.  
   - Verifica los permisos con `ls -l`.

3. **Scripts y ejecución**  
   - Dentro de `scripts`, crea un archivo llamado `backup.sh` que copie todo el contenido de `docs` a `backup`.  
   - Da permisos de ejecución al script y ejecútalo.  
   - Modifica el script para que agregue la fecha actual al nombre del archivo de respaldo (ejemplo: `backup_2025-10-02`).

4. **Automatización con cron**  
   - Programa una tarea cron que ejecute el script `backup.sh` todos los días a las 18:00 horas.  
   - Verifica que la tarea se haya agregado correctamente.

5. **Búsqueda y manipulación de archivos**  
   - Dentro de `docs`, crea varios archivos `.txt` con contenido diverso.  
   - Utiliza `grep` para buscar una palabra específica dentro de todos los archivos `.txt`.  
   - Redirige la salida a un archivo llamado `resultado_busqueda.txt` dentro de `docs`.

6. **Limpieza y organización**  
   - Renombra `resultado_busqueda.txt` a `resultados.txt`.  
   - Elimina todos los archivos `.txt` dentro de `backup` que tengan más de 7 días.  
   - Mueve cualquier archivo `.log` de `scripts` a `backup`.

---

## Temas que abarca

- Abrir terminal (`CTRL + ALT + T`)  
- Navegación (`pwd`, `ls`, `cd`)  
- Crear, copiar, mover y eliminar carpetas y archivos (`mkdir`, `cp`, `mv`, `rm`, `rmdir`)  
- Permisos y modos de usuario (`chmod`, `ls -l`, usuario y grupo, `usermod`)  
- Scripts y ejecución (`.sh`, `chmod +x`, ejecución de scripts)  
- Lectura y manipulación de archivos (`cat`, `less`, `grep`, redirecciones `>`, `>>`)  
- Bucles y condicionales en scripts (`if`, `for`, `while`, `case`)  
- Cron jobs (`crontab -e`, `crontab -l`)  
- Usuarios y grupos (`sudo`, `groupadd`, `useradd`)  
- Gestión de fechas y archivos antiguos (opcional `find -mtime`)  
