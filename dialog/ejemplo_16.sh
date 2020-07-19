#!/bin/bash
respuesta=$(dialog --title "Selecciona una hora" \
                   --stdout \
                   --timebox "la que prefieras" 0 0)
echo "Fecha seleccionada: ${respuesta}"
