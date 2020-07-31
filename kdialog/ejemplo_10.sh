#!/bin/bash
respuesta=$(kdialog --title "https://www.atareao.es" \
                    --getsavefilename "Selecciona un archivo")
echo $respuesta
