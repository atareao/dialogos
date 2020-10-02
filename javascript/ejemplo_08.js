#!/usr/bin/gjs

imports.gi.versions.Gtk = '3.0';
const {Gtk} = imports.gi;

Gtk.init(null);

function show_dialog(){
    let filter = new Gtk.FileFilter();
    filter.add_mime_type('text/plain');
    let dialog = new Gtk.FileChooserDialog({
        title: 'https://www.atareao.es',
        action: Gtk.FileChooserAction.OPEN,
        filter: filter,
        select_multiple: false
        });
    dialog.add_button('Si', Gtk.ResponseType.YES);
    dialog.add_button('No', Gtk.ResponseType.NO);
    try{
        if(dialog.run() == Gtk.ResponseType.YES){
            print(dialog.get_filename());
            return 0;
        }
    }catch(error){
    }
    return 1;
}
show_dialog();
