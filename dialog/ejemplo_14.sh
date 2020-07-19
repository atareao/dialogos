#!/bin/bash
respuesta=$(dialog --title "Selecciona un directorio" \
                   --stdout \
                   --dselect $HOME/  14 70)
echo "Directorio seleccionado: ${respuesta}"
