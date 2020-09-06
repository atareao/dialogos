#!/bin/bash
fecha=$(zenity --calendar \
               --title="https://www.atareao.es" \
               --text="Elige una fecha")
ans=$?
if [ $ans -eq 0 ]
then
    echo "Has elegido este fecha: ${fecha}"
else
    echo "No has elegido ninguna fecha"
fi

