#!/bin/bash

opc=0 #declaro mi variable

# obtengo el valor de la variable y el operardor de comparación
while [ $opc -ne 4 ]; do
clear 
echo "1. Saludar al usuario"
echo "2. Evaluar EDAD"
echo "3. Crear RESPALDO"
echo "4. Salir"
echo
read -p "Seleccione una opción: " opc #guardo el valor seleccionado en opc

case $opc in

	1) clear
		echo Hola $USER
		sleep 3;;
	2) clear 
		read -p "Ingrese su edad" edad

		if [ $edad < 18 ] then
			echo "Es menor de edad"
		else
			echo "Es mayor de edad"
		fi
		sleep 3;;
	3) clear 
	 	echo Esta es la opción 3
		mkdir $HOME/Escritorio/Respaldo
		cp -r $HOME/Documentos/* $HOME/Escritorio/Respaldo
		sleep 3;;
	4) clear ;;
	*) echo $opc no es una opción valida
		sleep 3;;
esac

echo 
read -p "Pulse una tecla para continuar ..." tecla
done # fin del bucle
