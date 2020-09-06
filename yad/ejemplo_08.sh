#!/bin/bash
opcion=$(yad --entry \
             --title="https://www.atareao.es" \
             --image=gtk-info \
             --width=250 \
             --height=80 \
             --width=250 \
             --button=Aceptar:0 \
             --button="No quiero elegir ninguna opción":1 \
             --center \
             --text-align=center \
             --entry-label="Selecciona una opción" \
             --entry-text=1 2 3 4 5)
ans=$?
if [ $ans -eq 0 ]
then
    echo "Has elegido la opción: ${opcion}"
else
    echo "No has elegido ninguna opción"
fi
