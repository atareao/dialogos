#!/bin/bash
numero=$(zenity --scale \
                --title="https://www.atareao.es" \
                --text="Elige un numero de 1 a 10" \
                --min-value=1 \
                --max-value=10 \
                --value=3)
ans=$?
if [ $ans -eq 0 ]
then
    echo "Has elegido este numero: ${numero}"
else
    echo "No has elegido ningún numero"
fi

