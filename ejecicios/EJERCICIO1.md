# EJECICIOS CON LINUX

## Ejercicio 1

## 🧠 Objetivo
Crear un script que automatice tareas básicas de administración de usuarios y permisos en un sistema Linux, aplicando comandos y estructuras de control aprendidas.

---

## 📂 Nombre del script
`gestion_usuarios.sh`

---

## 🧾 Instrucciones

El script debe realizar las siguientes acciones:

1. **Solicitar al usuario ingresar por consola:**
   - El nombre de un nuevo **grupo**.
   - El nombre de un nuevo **usuario**.

2. **Crear el grupo** ingresado (solo si no existe).

3. **Crear el usuario** con las siguientes características:
   - Directorio home: `/home/<usuario>`
   - Shell: `/bin/bash`
   - Grupo principal: el grupo ingresado
   - Grupo adicional: `sudo` (para que tenga permisos de superusuario)

4. **Crear una carpeta** llamada `proyectos` dentro del home del nuevo usuario.

5. **Copiar el contenido** de la carpeta `/etc/skel/` dentro de `/home/<usuario>/proyectos`.

6. **Cambiar los permisos** de la carpeta `proyectos` para que:
   - El **usuario** tenga lectura, escritura y ejecución (`rwx`).
   - El **grupo** tenga solo lectura y ejecución (`r-x`).
   - **Otros** no tengan ningún permiso (`---`).

7. **Generar un archivo de log** llamado `registro_usuarios.txt` que:
   - Registre la **fecha y hora** de creación del usuario y el grupo.
   - Se agregue al final del archivo cada vez que se ejecute el script.
   - Use redirección de salida `>>`.

8. **Mostrar en pantalla** el contenido del archivo de log usando `cat`.

---

## 🧰 Comandos y conceptos a aplicar

- `read`, `sudo`, `groupadd`, `useradd`, `mkdir`, `cp`, `chmod`, `ls`, `cat`
- Redirección `>>`
- Condicionales `if`, operadores `[ ]`
- Comprobaciones con `-d` y `-e` (existencia de carpeta/usuario/grupo)
- Permisos octales (`chmod 750`)
- Variables en Bash
- Rutas relativas y absolutas (`cd`, `pwd`)

---

## ✅ Resultado esperado

Un sistema que permita, con un solo script, automatizar la gestión básica de un nuevo usuario con permisos definidos, dejando registro de la acción y aplicando buenas prácticas del sistema Linux.

---



