#!/bin/bash

wallpape_path="./wallpapers/wallhaven-12012.jpg"
custom_theme_path="./wal/caramel.json"

gtk_icon="gtk-icon-theme-name"
icon_theme="Ultra Flat Orange"

gtk_cursor="gtk-cursor-theme-name"
cursor_theme="Hacked-aio"

dunst_bg="#000000"
dunst_border="#eaa651"
dunst_low_fg="#888888"
dunst_medium_fg="#F9F9F9"
dunst_high_fg="#FFF0F0"

source ./setters/gtk-setter.sh
source ./setters/dunst-setter.sh

feh --bg-scale $wallpape_path
pkill dunst
dunst &>/dev/null &
wal -gn -f $custom_theme_path
