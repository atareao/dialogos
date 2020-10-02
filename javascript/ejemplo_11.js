#!/usr/bin/gjs

imports.gi.versions.Gtk = '3.0';
const {Gtk} = imports.gi;

Gtk.init(null);

function show_dialog(){
    let dialog = Gtk.Dialog.new();
    dialog.set_title('https://www.atareao.es');
    dialog.add_button('Si', Gtk.ResponseType.YES);
    dialog.add_button('No', Gtk.ResponseType.NO);
    let grid = Gtk.Grid.new();
    grid.set_margin_top(10);
    grid.set_margin_bottom(10);
    grid.set_margin_start(10);
    grid.set_margin_end(10);
    grid.set_column_spacing(10);
    grid.set_row_spacing(10);
    dialog.get_content_area().add(grid);
    grid.attach(Gtk.Label.new('Fecha:'), 0, 0, 1, 1);
    let fecha = Gtk.Calendar.new();
    grid.attach(fecha, 1, 0, 1, 1);
    dialog.show_all();
    try{
        if(dialog.run() == Gtk.ResponseType.YES){
            print(fecha.get_date());
            return 0;
        }
    }catch(error){
        print(error);
    }
    return 1;
}
show_dialog();
