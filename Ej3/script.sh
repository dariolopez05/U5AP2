#! /bin/bash
lin=0
linp=0
win=0
winp=0
while read linea; do
    so=$(echo $linea | awk '{print $2}')
    if [ $so = "Linux" ]; then
        proc=$(echo $linea | awk '{print $3}')
        lin=$((lin+1))
        linp=$((linp+proc))
    else
        proc=$(echo $linea | awk '{print $3}')
        win=$((win+1))
        winp=$((winp+proc))
    fi
done < listado.txt
echo "Linux-> $lin $linp"
echo "Windows-> $win $winp"