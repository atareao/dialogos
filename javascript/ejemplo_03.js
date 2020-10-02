#!/usr/bin/gjs

imports.gi.versions.Gtk = '3.0';
const {Gtk} = imports.gi;

Gtk.init(null);

function show_dialog(){
    let dialog = new Gtk.MessageDialog({
        title: 'https://www.atareao.es',
        text: '¿Estás <span weight="bold" foreground="red">seguro</span>?',
        use_markup: true
        });
    dialog.add_button('Si', Gtk.ResponseType.YES);
    dialog.add_button('No', Gtk.ResponseType.NO);
    try{
        if(dialog.run() == Gtk.ResponseType.YES){
            return 0;
        }
    }catch(error){
    }
    return 1;
}
show_dialog();
