#!/bin/bash
nombre=$(yad --entry \
             --title="https://www.atareao.es" \
             --image=gtk-info \
             --width=250 \
             --height=80 \
             --width=250 \
             --button=Aceptar:0 \
             --button="No te lo quiero decir":1 \
             --center \
             --text-align=center \
             --text="¿Cual es tu nombre?")
ans=$?
if [ $ans -eq 0 ]
then
    echo "Su nombre es: ${nombre}"
else
    echo "No me quiere decir su nombre"
fi
