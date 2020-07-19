#!/bin/bash
respuesta=$(dialog --title "Ejemplo de menu" \
                  --stdout \
                  --menu "Opciones" 12 20 5 \
                         1 "Opción 1" \
                         2 "Opción 2" \
                         3 "Opción 3" \
                         4 "Opción 4")
echo $respuesta
