#!/bin/bash

clear

numA=$1
numB=$2

echo "###### Calculadora ######"
echo "Numeros A=$numA y B=$numB"
echo "Sumar A+B = " $((numA + numB))
echo "Resta A-B = " $((numA - numB))
echo "Multiplicación A*B = " $((numA * numB))
echo "División A/B = " $((numA / numB))
echo "Resto A%B = " $((numA % numB))

