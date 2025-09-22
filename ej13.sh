#!/bin/bash

archivo="lista.txt"

while true; do
    echo "=== MENÚ AGENDA ==="
    echo "1) Añadir"
    echo "2) Buscar"
    echo "3) Listar"
    echo "4) Ordenar"
    echo "5) Borrar"
    echo "6) Salir"
    read -p "Opción: " opcion

    case $opcion in
        1)
            read -p "Nombre: " nombre
            read -p "Dirección: " direccion
            read -p "Teléfono: " telefono
            echo "$nombre | $direccion | $telefono" >> "$archivo"
            ;;
        2)
            read -p "Buscar: " patron
            grep -i "$patron" "$archivo"
            ;;
        3)
            cat "$archivo"
            ;;
        4)
            sort "$archivo" -o "$archivo"
            echo "Registros ordenados."
            ;;
        5)
            rm -f "$archivo"
            echo "Archivo borrado."
            ;;
        6)
            exit 0
            ;;
        *)
            echo "Opción no válida."
            ;;
    esac
done
