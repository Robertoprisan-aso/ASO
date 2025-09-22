#!/bin/bash


if [ $# -ne 2 ]; then
    echo "Error: Se deben indicar exactamente 2 parámetros."
    echo "Uso: $0 <fichero_origen> <fichero_destino>"
    exit 1
fi

origen=$1
destino=$2


if [ ! -f "$origen" ]; then
    echo "Error: El fichero '$origen' no existe o no es un fichero ordinario."
    exit 2
fi


if [ -e "$destino" ]; then
    echo "Error: Ya existe un archivo, directorio u objeto con el nombre '$destino'."
    exit 3
fi


cp "$origen" "$destino"
echo "Copia realizada con éxito: '$origen' → '$destino'"
