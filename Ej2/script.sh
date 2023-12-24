#! /bin/bash
par=0
impar=0
for num in $(cat numeros.txt); do 
    if [ $(($num % 2)) -eq 0 ]
    then
        par=$((par+1))
    else
        impar=$((impar+1))
    fi
done
echo "Hay $par numeros pares y $impar impares."