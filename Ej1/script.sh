#! /bin/bash

for line in $(cat nombres.txt); do 
    mkdir "$line"
    contador=1
    while [ $1 -ge $contador ]; do
        cd "$line"
        mkdir "Personal $contador"
        contador=$((contador+1))
    done
    cd ..
done