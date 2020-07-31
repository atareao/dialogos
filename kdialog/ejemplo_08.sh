#!/bin/bash
respuesta=$(kdialog --title "https://www.atareao.es" \
                    --checklist "Elige tus preferencias" \
                    opcion1 queso on\
                    opcion2 aceitunas off\
                    opcion3 huevo off)
echo $respuesta
