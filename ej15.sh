#!/bin/bash
read -p "Introduce el numero: " n

for i in {1..10}
do
  echo "$i x $n = $((i * n))"
done


