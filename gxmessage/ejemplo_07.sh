#!/bin/bash
gxmessage --title "https://www.atareao.es" \
          --center \
          --file "contenido.txt" \
          --timeout 3 \
          --buttons "Continuar:0,Cancelar:1"
ans=$?
echo $ans
if [ $ans -eq 0 ]
then
    echo "Respondió si"
else
    echo "Respondió no"
fi
