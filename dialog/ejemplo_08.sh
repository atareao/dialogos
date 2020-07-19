#!/bin/bash
respuesta=$(dialog --title "https://www.atareao.es" \
                   --stdout \
                   --checklist "Selecciona una opción:" 0 0 3 \
                               1 personal off\
                               2 profesional on\
                               3 otro off)
echo "Has elegido: $respuesta"
