#!/bin/bash
gxmessage --title "https://www.atareao.es" \
          --center \
          --ontop \
          -noescape \
          --buttons "Si:0,No:1" \
          "¿Quiere continuar?"
ans=$?
echo $ans
if [ $ans -eq 0 ]
then
    echo "Respondió si"
else
    echo "Respondió no"
fi
