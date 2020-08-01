#!/bin/bash
texto="¿<span weight=\"bold\" foreground=\"green\">Seguro</span> que quieres?"
zenity --question \
       --title="https://www.atareao.es" \
       --width=250 \
       --ok-label="Continuar" \
       --cancel-label="Abandonar" \
       --text="${texto}"
ans=$?
if [ $ans -eq 0 ]
then
    echo "Si que quiere continuar"
else
    echo "No quiere continuar"
fi
