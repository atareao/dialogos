#!/bin/bash
ans=$(whiptail --title "https://www.atareao.es" \
               --radiolist "Elige un color" 10 80 4 \
               "AZUL" "azul" OFF \
               "ROJO" "rojo" OFF \
               "GRIS" "gris" ON \
               "LILA" "lila" OFF \
               3>&1 1<&2 2>&3)
salida=$?
if [ $salida -eq 0 ]
then
    echo "Has seleccionado el color ${ans}"
else
    echo "No has seleccionado ningún color"
fi

