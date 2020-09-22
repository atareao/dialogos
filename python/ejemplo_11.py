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
    grid = Gtk.Grid.new()
    grid.set_margin_top(10)
    grid.set_margin_bottom(10)
    grid.set_margin_start(10)
    grid.set_margin_end(10)
    grid.set_column_spacing(10)
    grid.set_row_spacing(10)
    dialog.get_content_area().add(grid)
    grid.attach(Gtk.Label.new('Fecha:'), 0, 0, 1, 1)
    fecha = Gtk.Calendar.new()
    grid.attach(fecha, 1, 0, 1, 1)
    dialog.show_all()
    try:
        if dialog.run() == Gtk.ResponseType.YES:
            print(fecha.get_date())
            exit(0)
    except KeyboardInterrupt:
        pass
    exit(1)
