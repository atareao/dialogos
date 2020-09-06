#!/bin/bash
color=$(zenity --color-selection \
               --title="https://www.atareao.es" \
               --height=200 \
               --width=100 \
               --show-palette \
               --text="Selecciona un color:")
ans=$?
if [ $ans -eq 0 ]
then
    echo "Has elegido este color: ${color}"
else
    echo "No has elegido ningún color"
fi
