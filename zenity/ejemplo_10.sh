#!/bin/bash
directorio=$(zenity --file-selection \
                    --title="https://www.atareao.es" \
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
