#!/bin/bash
dias=0
precipitaciones=0
pdia=0
while read linea; do
    pdia=$(echo $linea | awk '{print $2}')  
    precipitaciones=$((precipitaciones+pdia))
    dias=$((dias+1))
done < precipitaciones.txt
media=$((precipitaciones/dias))
echo "La media es de $media"