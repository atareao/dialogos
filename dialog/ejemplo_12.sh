#!/bin/bash
respuesta=$(dialog --title "Tu pizza" \
                   --stdout \
                   --buildlist "Elige los ingredientes de la pizza:" 0 0 0 \
                               1 queso off \
                               2 alcachofas on \
                               3 champiñones off \
                               4 anchoas off \
                               5 tomate off)
echo "Ingredientes elegidos: ${respuesta}"
