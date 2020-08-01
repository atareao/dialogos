#!/bin/bash
componente=$(zenity --list \
                    --title="https://www.atareao.es" \
                    --height=200 \
                    --width=100 \
                    --ok-label="Aceptar" \
                    --cancel-label="Cancelar" \
                    --text="Selecciona un componente para tu pizza:" \
                    --radiolist \
                    --column="" \
                    --column="Componente" \
                    1 "Jamón" 2 "Queso" 3 "Huevo")
ans=$?
if [ $ans -eq 0 ]
then
    echo "Has elegido: ${componente}"
else
    echo "No has elegido ningún componente"
fi
