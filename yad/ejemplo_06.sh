#!/bin/bash
passwd=$(yad --entry \
             --title="https://www.atareao.es" \
             --image=gtk-info \
             --width=250 \
             --height=80 \
             --width=250 \
             --button=Aceptar:0 \
             --button="No te lo quiero decir":1 \
             --center \
             --hide-text \
             --text-align=center \
             --text="¿Cual es la contraseña?")
ans=$?
if [ $ans -eq 0 ]
then
    echo "Tu contraseña es: ${passwd}"
else
    echo "No me quiere decir su contraseña"
fi
