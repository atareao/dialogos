#!/usr/bin/env python
# -*- coding: utf-8 -*-

import gi
try:
    gi.require_version('Gtk', '3.0')
except ValueError:
    exit(1)
from gi.repository import Gtk


if __name__ == '__main__':
    dialog = Gtk.Dialog.new()
    dialog.set_title('https://www.atareao.es')
    dialog.add_button('Si', Gtk.ResponseType.YES)
    dialog.add_button('No', Gtk.ResponseType.NO)
    box = Gtk.Box.new(Gtk.Orientation.HORIZONTAL, 10)
    box.set_margin_top(10)
    box.set_margin_bottom(10)
    dialog.get_content_area().add(box)
    label = Gtk.Label.new('Dime tu nombre')
    box.pack_start(label, True, True, 5)
    entry = Gtk.Entry.new()
    box.pack_start(entry, True, True, 5)
    dialog.show_all()
    try:
        if dialog.run() == Gtk.ResponseType.YES and entry.get_text():
            print(entry.get_text())
            exit(0)
    except KeyboardInterrupt:
        pass
    exit(1)
