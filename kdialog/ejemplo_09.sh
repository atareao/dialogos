#!/bin/bash
respuesta=$(kdialog --title "https://www.atareao.es" \
                    --getopenfilename /home/ *.py "Selecciona un archivo")
echo $respuesta
