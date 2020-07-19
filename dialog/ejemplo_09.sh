#!/bin/bash
respuesta=$(dialog --title "https://www.atareao.es" \
                   --stdout \
                   --radiolist "Selecciona una opción:" 0 0 3 \
                               a personal off\
                               b profesional on\
                               c otro off)
echo "Has elegido: $respuesta"
