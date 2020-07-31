#!/bin/bash
respuesta=$(kdialog --title "https://www.atareao.es" \
                    --password "¿Cual es la contraseña?" Lorenzo)
echo $respuesta
