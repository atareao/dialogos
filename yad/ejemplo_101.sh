#!/bin/bash
font=$(yad --font \
           --title="https://www.atareao.es" \
           --center \
           --height=200 \
           --width=100 \
           --preview="Tres tristes tigres comían trigo en un trigal" \
           --text="Selecciona una fuente:")
ans=$?
if [ $ans -eq 0 ]
then
    echo "Has elegido esta tipografía: ${font}"
else
    echo "No has elegido ninguna tipografía"
fi
