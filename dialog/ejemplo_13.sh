#!/bin/bash
respuesta=$(dialog --title "Selecciona tu cumpleaños" \
                   --stdout \
                   --calendar "¿Cuando es?" 0 0)
echo "Fecha seleccionada: ${respuesta}"
