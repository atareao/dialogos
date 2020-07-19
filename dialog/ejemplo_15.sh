#!/bin/bash
respuesta=$(dialog --title "atareao.es" \
                   --stdout \
                   --inputbox ejemplo_15.sh 10 50)
echo "Lo que has escrito: ${respuesta}"
