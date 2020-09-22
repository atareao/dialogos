#!/usr/bin/env python
# -*- coding: utf-8 -*-

import gi
try:
    gi.require_version('Gtk', '3.0')
except ValueError:
    exit(1)
from gi.repository import Gtk


if __name__ == '__main__':
    dialog = Gtk.MessageDialog(message_type=Gtk.MessageType.ERROR,
                               text='Este es el mensaje que se muestra')
    dialog.set_title('https://www.atareao.es')
    # dialog.set_markup('Este es el <b>mensaje</b> que se muestra')
    try:
        dialog.run()
    except KeyboardInterrupt:
        pass
