#!bin/bash

suma=0

   while true
   do 

   read -p "Introduce un número" num

	if [ $num -eq 0 ]; then
	echo "El resultado de la suma es: $suma"
        break
	fi
   

   suma=$((suma + num))
   echo " la suma total es: $suma"

   done


