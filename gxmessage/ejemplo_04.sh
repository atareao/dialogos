#!/bin/bash
respuesta=$(gxmessage --title "https://www.atareao.es" \
                      --center \
                      --entrytext "Alberto" \
                      "¿Cual es tu nombre?")
echo "Tu nombre es: $respuesta"
