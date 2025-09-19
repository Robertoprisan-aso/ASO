#!/bin/bash

if [ -z "$1" ]; then
  echo "Uso: $0 <directorio>"
  exit 1
fi

if [ ! -d "$1" ]; then
  echo "Error: '$1' no es un directorio válido."
  exit 1
fi

fecha=$(date +%F)
nombre_dir=$(basename "$1")
archivo_tar="${fecha}-${nombre_dir}.tar.gz"

tar -czf "$archivo_tar" -C "$(dirname "$1")" "$nombre_dir"

echo "Archivo creado: $archivo_tar"

