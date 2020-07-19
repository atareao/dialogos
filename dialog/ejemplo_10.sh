#!/bin/bash
respuesta=$(dialog --title "Selecciona un archivo" \
                   --stdout \
                   --fselect $HOME/  14 70)
if [ -f "$respuesta" ]
then
    dialog --title "Borrar archivo" \
           --yesno "Estás seguro de borrar ${respuesta}" 0 0
    ans=$?
    if [ $ans -eq 0 ]
    then
        rm "$respuesta"
        dialog --msgbox "El archivo ${respuesta} fue borrado" 0 0
    fi
fi
