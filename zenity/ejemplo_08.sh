#!/bin/bash
componente=$(zenity --list \
                    --title="https://www.atareao.es" \
                    --height=200 \
                    --width=100 \
                    --ok-label="Aceptar" \
                    --cancel-label="Cancelar" \
                    --text="Selecciona un componente para tu pizza:" \
                    --print-column=ALL \
                    --checklist \
                    --column="" \
                    --column="Componente" \
                    --column="Calorías" \
                    1 "Jamón" 100 2 "Queso" 150 3 "Huevo" 125)
ans=$?
if [ $ans -eq 0 ]
then
    echo "Has elegido: ${componente}"
else
    echo "No has elegido ningún componente"
fi
