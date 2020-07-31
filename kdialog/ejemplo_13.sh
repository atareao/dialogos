#!/bin/bash
respuesta=$(kdialog --progressbar "Ejemplo" 5)
echo $respuesta
for i in $(seq 0 5)
do
    sleep 1
    echo $i
    dbus-send --print-reply --dest=$respuesta org.freedesktop.DBus.Properties.Set string:org.kde.kdialog.ProgressDialog string:value variant:int32:$i
done
dbus-send --print-reply --dest=$respuesta org.kde.kdialog.ProgressDialog.close
