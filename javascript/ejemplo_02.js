#!/usr/bin/gjs

imports.gi.versions.Gtk = '3.0';
const {Gtk} = imports.gi;

Gtk.init(null);

(new Gtk.MessageDialog({
    title: 'https://www.atareao.es',
    text: 'Este es el mensaje que se muestra'
    })).run();
