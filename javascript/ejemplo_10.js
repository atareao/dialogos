#!/usr/bin/gjs

imports.gi.versions.Gtk = '3.0';
const {Gtk} = imports.gi;

Gtk.init(null);

function show_dialog(){
    let dialog = new Gtk.ColorChooserDialog({
        title: 'https://www.atareao.es'
    });
    try{
        if(dialog.run() == Gtk.ResponseType.OK){
            print(dialog.get_rgba());
            return 0;
        }
    }catch(error){
    }
    return 1;
}
show_dialog();
