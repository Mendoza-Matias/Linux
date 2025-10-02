# Ejercicio práctico de Linux: Gestión de proyectos y logs

## Enunciado

Eres responsable de mantener un proyecto en un servidor Linux. Tu objetivo es crear una estructura de carpetas organizada, gestionar usuarios y permisos, y preparar scripts para análisis de logs. Completa los siguientes pasos usando únicamente la terminal:

---

### 1. Estructura de carpetas y archivos
- Crea una carpeta llamada `proyecto_logs` en tu directorio personal.  
- Dentro de `proyecto_logs`, crea las subcarpetas: `entrada`, `procesados` y `scripts`.  
- Dentro de `entrada`, crea 3 archivos de texto: `log1.txt`, `log2.txt` y `log3.txt` con contenido de prueba (pueden ser varias líneas con palabras aleatorias).  

---

### 2. Usuarios y permisos
- Crea un grupo llamado `analistas`.  
- Crea un usuario llamado `ana` que pertenezca al grupo `analistas`.  
- Asigna permisos de lectura y escritura al grupo `analistas` sobre la carpeta `proyecto_logs/entrada`, pero que otros usuarios solo puedan leer.  
- Verifica los permisos con `ls -l`.

---

### 3. Scripts de procesamiento
- Dentro de `scripts`, crea un archivo llamado `contar_palabras.sh`.  
- Este script debe contar cuántas veces aparece la palabra `"error"` en todos los archivos de `entrada` y guardar el resultado en `procesados/errores.txt`.  
- Da permisos de ejecución al script y ejecútalo.  

---

### 4. Automatización con cron
- Programa una tarea cron para que `contar_palabras.sh` se ejecute todos los días a las 20:00 horas.  
- Verifica que la tarea se haya agregado correctamente con `crontab -l`.

---

### 5. Gestión de archivos antiguos
- Crea varios archivos `.log` en la carpeta `entrada` con fechas ficticias.  
- Elimina automáticamente todos los archivos `.log` que tengan más de 3 días (usa el comando `find`).  
- Mueve los archivos procesados (`errores.txt`) a un subdirectorio llamado `archivos_historicos` dentro de `procesados`.  

---

### 6. Búsqueda y análisis
- Busca dentro de `procesados/errores.txt` todas las líneas que contengan la palabra `"fatal"` ignorando mayúsculas y minúsculas.  
- Redirige la salida a un archivo llamado `errores_criticos.txt`.  

---

## Temas que abarca

- Abrir terminal (`CTRL + ALT + T`)  
- Navegación y manejo de directorios (`pwd`, `ls`, `cd`)  
- Crear, copiar, mover y eliminar archivos y carpetas (`mkdir`, `cp`, `mv`, `rm`)  
- Permisos y modos de usuario (`chmod`, `ls -l`, usuarios y grupos, `usermod`)  
- Scripts y ejecución (`.sh`, `chmod +x`, ejecución de scripts)  
- Lectura y manipulación de archivos (`cat`, `less`, `grep`, redirecciones `>`, `>>`)  
- Condicionales y bucles en scripts (`if`, `for`, `while`, `case`)  
- Cron jobs (`crontab -e`, `crontab -l`)  
- Gestión de archivos antiguos (`find`, `-mtime`)  
- Redirección de salida y filtrado de texto (`grep -i`, `grep -n`)  
