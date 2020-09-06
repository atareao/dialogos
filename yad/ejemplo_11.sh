#!/bin/bash
archivo=$(yad --file \
              --title="https://www.atareao.es" \
              --height=200 \
              --width=100 \
              --center \
              --text="Selecciona un archivo:" \
              --file-filter="scripts | *.sh")
ans=$?
if [ $ans -eq 0 ]
then
    echo "Has elegido este archivo: ${archivo}"
else
    echo "No has elegido ningún archivo"
fi
