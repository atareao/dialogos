#!/bin/bash
respuesta=$(dialog --title "atareao.es"                  \
                   --separate-widget $"\n"                \
                   --form  "Introduce tus datos"         \
                   0 0 0                                 \
                   "Nombre:"   1 1 "$nombre"   1 10 20 0 \
                   "Apellido:" 2 1 "$apellido" 2 10 20 0 \
                   "Email:"    3 1 "$mail"     3 10 20 0 \
                   3>&1 1>&2 2>&3 3>&-)
nombre=$(echo "$respuesta" | sed -n 1p)
apellido=$(echo "$respuesta" | sed -n 2p)
email=$(echo "$respuesta" | sed -n 3p)
echo "Nombre: $nombre"
echo "Apellido: $apellido"
echo "Email: $email"
