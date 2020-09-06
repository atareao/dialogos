#!/bin/bash
directorio=$(yad --file \
                 --title="https://www.atareao.es" \
                 --center \
                 --height=200 \
                 --width=100 \
                 --text="Selecciona un directorio:" \
                 --directory)
ans=$?
if [ $ans -eq 0 ]
then
    echo "Has elegido este directorio: ${directorio}"
else
    echo "No has elegido ningún directorio"
fi
