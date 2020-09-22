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
    grid.attach(Gtk.Label.new('Nombre:'), 0, 0, 1, 1)
    nombre = Gtk.Entry.new()
    grid.attach(nombre, 1, 0, 1, 1)
    grid.attach(Gtk.Label.new('Contraseña:'), 0, 1, 1, 1)
    password = Gtk.Entry.new()
    password.set_visibility(False)
    grid.attach(password, 1, 1, 1, 1)
    dialog.show_all()
    try:
        if dialog.run() == Gtk.ResponseType.YES and \
                nombre.get_text() and \
                password.get_text():
            print('{}|{}'.format(nombre.get_text(), password.get_text()))
            exit(0)
    except KeyboardInterrupt:
        pass
    exit(1)
