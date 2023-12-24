#!/bin/bash
dias=0
precipitaciones=0
pdia=0
while read linea; do
    pdia=$(echo $linea | awk '{print $2}')
    dia=$(echo $linea | awk '{print $1}')  
    if [ $pdia -eq 0 ];then
    case $(( dia % 7 )) in
        1)
        echo "El lunes no llueve."
        ;;
        2)
        echo "Es martes no llueve."
        ;;
        3)
        echo "Es miercoles no llueve."
        ;;
        4)
        echo "Es jueves no llueve."
        ;;
        5)
        echo "Es viernes no llueve."
        ;;
        6)
        echo "Es sabado no llueve."
        ;;
        0)
        echo "Es domingo no llueve."
        ;;
    esac
    fi
done < precipitaciones.txt