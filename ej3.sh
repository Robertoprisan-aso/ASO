#!/bin/bash

ls /etc > listado.txt
cat listado.txt
lineas=$(wc -l < listado.txt)
palabras=$(wc -w < listado.txt)

echo "Número de líneas: $lineas"
echo "Número de palabras: $palabras"
