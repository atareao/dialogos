#!/bin/bash
respuesta=$(whiptail --title "https://www.atareao.es" \
                     --inputbox "¿Cual es tu nombre?" 7 40 Pepe \
                     3>&1 1>&2 2>&3)
status=$?
if [ $status = 0 ]
then
    echo "Tu nombre es: $respuesta"
else
    echo "No me has querido decir el nombre"
fi

