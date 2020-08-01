#!/bin/bash
zenity --question \
       --title="https://www.atareao.es" \
       --width=250 \
       --text="¿Quieres continuar?"
ans=$?
if [ $ans -eq 0 ]
then
    echo "Si que quiere continuar"
else
    echo "No quiere continuar"
fi
