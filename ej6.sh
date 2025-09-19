#!bin/bash

echo " introduce la palabra a añadir"
read word

echo "$word" >> lista.txt

echo "La palabra: $word ha sido añadida al fichero de texto: $lista.txt"
