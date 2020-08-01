#!/bin/bash
nombre=$(zenity --entry \
                --title="https://www.atareao.es" \
                --width=250 \
                --ok-label="Aceptar" \
                --cancel-label="No te lo quiero decir" \
                --text="¿Cual es tu nombre?")
ans=$?
if [ $ans -eq 0 ]
then
    echo "Su nombre es: ${nombre}"
else
    echo "No me quiere decir su nombre"
fi
