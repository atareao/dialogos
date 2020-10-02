#!/usr/bin/gjs

imports.gi.versions.Gtk = '3.0';
const {Gtk} = imports.gi;

Gtk.init(null);

function show_dialog(){
    let dialog = Gtk.Dialog.new();
    dialog.set_title('https://www.atareao.es');
    dialog.add_button('Si', Gtk.ResponseType.YES);
    dialog.add_button('No', Gtk.ResponseType.NO);
    let box = Gtk.Box.new(Gtk.Orientation.HORIZONTAL, 10);
    box.set_margin_top(10);
    box.set_margin_bottom(10);
    dialog.get_content_area().add(box);
    let label = Gtk.Label.new('Dime tu nombre');
    box.pack_start(label, true, true, 5);
    let entry = Gtk.Entry.new();
    box.pack_start(entry, true, true, 5);
    dialog.show_all();
    try{
        if(dialog.run() == Gtk.ResponseType.YES && entry.get_text()){
            print(entry.get_text());
            return 0;
        }
        print(entry.get_text());
    }catch(error){
        print(error);
    }
    return 1;
}
show_dialog();
