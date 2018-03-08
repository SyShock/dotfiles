#!/usr/bin/env bash

#\$1 - first parameter
#\$2 - second parameter
# etc.

# best get that preassembled chip manual, if you're doing hardware

# script for a qorkspace preset
# could add some options: help, software project, hardware project, with
# and without app, etc

if [ "$1" ]; then
  if [ ! -d "$1" ]; then
	mkdir $1
  fi
  cd $1
  /usr/bin/chromium --profile-directory=Default --app-id=pebppomjfocnoigkeepgbmcifnnlndla
  zeal
  nvim
fi 

