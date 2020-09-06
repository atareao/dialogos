#!/bin/bash
color=$(yad --color-selection \
            --title="https://www.atareao.es" \
            --center \
            --height=200 \
            --width=100 \
            --alpha \
            --gtk-palette \
            --expand-palette \
            --palete=/etc/X11/rgb.txt \
            --text="Selecciona un color:")
ans=$?
if [ $ans -eq 0 ]
then
    echo "Has elegido este color: ${color}"
else
    echo "No has elegido ningún color"
fi
