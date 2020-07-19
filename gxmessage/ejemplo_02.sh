#!/bin/bash
respuesta=$(gxmessage --title "https://www.atareao.es" \
                      --center \
                      --entry \
                      "¿Cual es tu nombre?")
echo "Tu nombre es: $respuesta"
