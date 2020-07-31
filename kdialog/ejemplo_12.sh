#!/bin/bash
respuesta=$(kdialog --title "https://www.atareao.es" \
                    --getcolor --default "#00ff00")
echo $respuesta
