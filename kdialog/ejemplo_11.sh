#!/bin/bash
respuesta=$(kdialog --title "https://www.atareao.es" \
                    --getopenurl "Selecciona un archivo")
echo $respuesta
