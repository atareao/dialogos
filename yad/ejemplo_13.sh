#!/bin/bash
(
sleep 1
echo "10"
echo "# Paso 1"; sleep 1
echo "20"
echo "# Paso 2"; sleep 1
echo "30"
echo "# Paso 3"; sleep 1
echo "50"
echo "# Paso 4"; sleep 1
echo "70"
echo "# Paso 5"; sleep 1
echo "90"
echo "# Terminado"
echo "100"
) |
zenity --progress \
  --title="https://www.atareao.es" \
  --text="Iniciando el proceso" \
  --percentage=0

if [ "$?" = -1 ] ; then
        zenity --error \
          --text="Update canceled."
fi


