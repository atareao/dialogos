#!/bin/bash
password=$(zenity --password \
                  --title="https://www.atareao.es" \
                  --width=250 \
                  --ok-label="Aceptar" \
                  --cancel-label="No te la quiero decir" \
                  --text="Introduce la contraseña:")
ans=$?
if [ $ans -eq 0 ]
then
    echo "Tu contraseña es: ${password}"
else
    echo "No me quiere decir su contraseña"
fi
