#!/usr/bin/env python
# -*- coding: utf-8 -*-

import gi
try:
    gi.require_version('Gtk', '3.0')
except ValueError:
    exit(1)
from gi.repository import Gtk


if __name__ == '__main__':
    dialog = Gtk.ColorChooserDialog()
    try:
        if dialog.run() == Gtk.ResponseType.OK:
            print(dialog.get_rgba())
            exit(0)
    except KeyboardInterrupt:
        pass
    exit(1)
