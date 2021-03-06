#!/usr/bin/gjs

imports.gi.versions.Gtk = '3.0';
const {Gtk, GObject} = imports.gi;

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

    grid.attach(Gtk.Label.new('Selecciona un componente:'), 0, 0, 1, 1);
    let model = new Gtk.ListStore();
    model.set_column_types([GObject.TYPE_STRING, GObject.TYPE_STRING]);
    let items = [['Jamón', 100],
                 ['Queso', 150],
                 ['Huevo', 200]];
    for(let i=0; i < items.length; i++){
        let iter = model.append();
        model.set(iter, [0], [items[i][0]]);
        model.set(iter, [1], [items[i][1]]);
    }
    let componente = Gtk.ComboBox.new_with_model(model);
    let renderer_text = new Gtk.CellRendererText();
    componente.pack_start(renderer_text, true);
    componente.add_attribute(renderer_text, 'text', 0);
    let renderer_cal = new Gtk.CellRendererText();
    componente.pack_start(renderer_cal, true);
    componente.add_attribute(renderer_cal, 'text', 1);
    componente.set_active(0);
    grid.attach(componente, 1, 0, 1, 1);

    dialog.show_all();
    try{
        if(dialog.run() == Gtk.ResponseType.YES){
            let activeItem = componente.get_active();
            print(items[activeItem][0]);
            return 0;
        }
    }catch(error){
        print(error)
    }
    return 1;
}
show_dialog();
