#!/usr/bin/env python
# -*- coding: utf-8 -*-

import gi
try:
    gi.require_version('Gtk', '3.0')
except ValueError:
    exit(1)
from gi.repository import Gtk


if __name__ == '__main__':
    dialog = Gtk.FileChooserDialog()
    dialog.set_title('https://www.atareao.es')
    dialog.add_button('Si', Gtk.ResponseType.YES)
    dialog.add_button('No', Gtk.ResponseType.NO)
    try:
        if dialog.run() == Gtk.ResponseType.YES:
            print(dialog.get_filename())
            exit(0)
    except KeyboardInterrupt:
        pass
    exit(1)
