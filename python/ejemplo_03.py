#!/usr/bin/env python
# -*- coding: utf-8 -*-

import gi
try:
    gi.require_version('Gtk', '3.0')
except ValueError:
    exit(1)
from gi.repository import Gtk


if __name__ == '__main__':
    dialog = Gtk.MessageDialog()
    dialog.set_title('https://www.atareao.es')
    dialog.set_markup('¿Estás <span weight="bold" foreground="red">seguro</span>?')
    dialog.add_button('Si', Gtk.ResponseType.YES)
    dialog.add_button('No', Gtk.ResponseType.NO)
    try:
        if dialog.run() == Gtk.ResponseType.YES:
            exit(0)
    except KeyboardInterrupt:
        pass
    exit(1)
