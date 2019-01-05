#!/bin/bash

# This is a script used to modify configs according to set variables

echo Setting icon and mouse themes... 
sed -i -e 's@'"${gtk_cursor}"'.*@'"${gtk_cursor}=${cursor_theme}"'@g' \
-e 's@'"${gtk_icon}"'.*@'"${gtk_icon}=${icon_theme}"'@g' \
-e 's@'"${gtk_cursor}"'.*@'"${gtk_cursor}=\"${cursor_theme}\""'@g' \
-e 's@'"${gtk_icon}"'.*@'"${gtk_icon}=\"${icon_theme}\""'@g' $HOME/.gtkrc-2.0
