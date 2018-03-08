#!/bin/bash

# This is a script used to modify configs according to set variables

echo Setting icon and mouse themes... 
sed -i -e 's@'"${gtk_cursor}"'.*@'"${gtk_cursor}=${cursor_theme}"'@g' \
-e 's@'"${gtk_icon}"'.*@'"${gtk_icon}=${icon_theme}"'@g' \
-e 's@'"${gtk_cursor}"'.*@'"${gtk_cursor}=\"${cursor_theme}\""'@g' \
-e 's@'"${gtk_icon}"'.*@'"${gtk_icon}=\"${icon_theme}\""'@g' $HOME/.gtkrc-2.0

echo Setting dunst styles...
sed -i -e 's@'"foreground.*#low"'@'"foreground=\"${dunst_low_fg}\" #low"'@g' \
-e 's@'"foreground.*#mid"'@'"foreground=\"${dunst_medium_fg}\" #mid"'@g' \
-e 's@'"foreground.*#high"'@'"foreground=\"${dunst_high_fg}\" #high"'@g' \
-e 's@'"background.*#bg"'@'"background=\"${dunst_bg}\" #bg"'@g' \
-e 's@'"color.*#border"'@'"color=\"${dunst_border}\" #border"'@g' $HOME/.config/dunst/dunstrc

