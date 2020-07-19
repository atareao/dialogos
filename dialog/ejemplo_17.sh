#!/bin/bash
secreto=$(dialog --title "Secreto" \
                 --stdout \
                 --passwordbox "Introduce la contraseña:" 0 0)
echo "Esta es la contraseña que has introducido: ${secreto}"
