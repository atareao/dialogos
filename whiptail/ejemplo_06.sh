#!/bin/bash
respuesta=$(whiptail --title "https://www.atareao.es" \
                     --passwordbox "Introduce la contraseña:" 7 40 \
                     3>&1 1>&2 2>&3)
status=$?
if [ $status = 0 ]
then
    echo "Tu contraseña es: $respuesta"
else
    echo "No me has querido decir la contraseña"
fi

