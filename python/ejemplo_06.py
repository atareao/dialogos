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
    grid.attach(Gtk.Label.new('Selecciona un componente:'), 0, 0, 1, 1)
    model = Gtk.ListStore(str)
    model.append(['Jamón'])
    model.append(['Queso'])
    model.append(['Huevo'])
    componente = Gtk.ComboBox.new_with_model(model)
    renderer_text = Gtk.CellRendererText()
    componente.pack_start(renderer_text, True)
    componente.add_attribute(renderer_text, 'text', 0)
    componente.set_active(0)
    grid.attach(componente, 1, 0, 1, 1)
    dialog.show_all()
    try:
        if dialog.run() == Gtk.ResponseType.YES:
            print(model.get_value(componente.get_active_iter(), 0))
            exit(0)
    except KeyboardInterrupt:
        pass
    exit(1)
