#!/bin/bash
respuesta=$(dialog --title "https://www.atareao.es" \
                   --stdout \
                   --inputbox "¿Cual es tu nombre?" 0 0) 
echo "Tu nombre es: $respuesta"
