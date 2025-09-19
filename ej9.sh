#!/bin/bash

echo "Selecciona una operación:"
echo "1) Sumar"
echo "2) Restar"
echo "3) Multiplicar"
echo "4) Dividir"
read opcion

echo "Introduce el primer número:"
read num1
echo "Introduce el segundo número:"
read num2

case $opcion in
  1)
    resultado=$((num1 + num2))
    echo "Resultado: $resultado"
    ;;
  2)
    resultado=$((num1 - num2))
    echo "Resultado: $resultado"
    ;;
  3)
    resultado=$((num1 * num2))
    echo "Resultado: $resultado"
    ;;
  4)
    if [ "$num2" -eq 0 ]; then
      echo "Error: División por cero"
    else
      resultado=$(echo "scale=2; $num1 / $num2" | bc)
      echo "Resultado: $resultado"
    fi
    ;;
  *)
    echo "Opción no válida"
    ;;
esac
