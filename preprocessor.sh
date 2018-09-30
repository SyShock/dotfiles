#!/bin/sh

calc_from_monitor=1
Xaxis=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f1 | sed "${calc_from_monitor}!d") 
Yaxis=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f2 | sed "${calc_from_monitor}!d")
XOffset=160
YOffset=25
height=$(($Yaxis/2+100))
terminal_start_block="#quick terminal"
terminal_end_block="##### END #####"

i3_config="\
  exec --no-startup-id urxvt -name metask -e tmux \n\
  for_window [instance=metask] floating enable; \n\
  for_window [instance=metask] move scratchpad; [instance=metask] scratchpad show; move position ${XOffset}px ${YOffset}px; resize set $(($Xaxis-$XOffset*2))px ${height}px;  move scratchpad \n\
  bindsym \$mod+grave [instance=metask] scratchpad show"

echo Setting up quick terminal
sed -i ':a;N;$!ba;s@'"${terminal_start_block}"'.*\n*'"${terminal_end_block}"'@'"${terminal_start_block}\n${i3_config}\n${terminal_end_block}"'@g' $HOME/.dotfiles/default/i3/config

echo Setting up background
wal -g -i $HOME/.xcolors/wallpapers/10968.jpg

echo Setting up icons and cursors
#

echo Settings up notifications
#

#logout - login
