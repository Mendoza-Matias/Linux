#!/bin/bash

numA=$1
numB=$2

read -p "Enter a number " numA
read -p "Enter other number " numB

#operations

echo "A + B = $((numA + numB))"
echo "A - B = $((numA - numB))"
echo "A * B = $((numA * numB))"
echo "A / B = $((numA / numB))"
echo "A % B = $((numA % numB))"

# prepotitions

echo "A > B = $((numA > numB))"
echo "A < B = $((numA < numB))"
echo "A >= B = $((numA >= numB))"
echo "A <= B = $((numA <= numB))"
echo "A != B = $((numA != numB))"
