#!/bin/bash
{
    for i in {0..100..10};do
        sleep 1
        echo $i
    done
} | whiptail --title "https://www.atareao.es" \
         --gauge "Espera mientras termino..." 5 40 0
