#!/bin/bash

# Pedir al usuario dos números
echo "Introduce el primer número: "
read num1

echo "Introduce el segundo número: "
read num2


media=$(echo "scale=2; ($num1 + $num2) / 2" | bc)


echo "La media aritmética de $num1 y $num2 es: $media"
