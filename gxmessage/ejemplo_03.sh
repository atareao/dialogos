#!/bin/bash
respuesta=$(gxmessage --title "https://www.atareao.es" \
                      --center \
                      --entry \
                      --buttons "Si:0,No:1" \
                      "¿Cual es tu nombre?")
ans=$?
if [ $ans -eq 0 ]
then
    echo "Tu nombre es: $respuesta"
else
    echo "No respondió a la pregunta formulada"
fi
