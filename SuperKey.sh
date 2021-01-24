#!/bin/bash
var=$(wmctrl -lix |grep 'Your_program') #check if program is opened in wmctrl and save to var
[[ ! -z "$var" ]] &&  # check if var is not empty ( not empty = program is already running)
	pidof Your_program >/dev/null && wmctrl -lix |grep 'Your_program'|cut -d ' ' -f 1 |xargs -i% wmctrl -i -a %  || #if is already running, select window
		your_program #if is not running, then run it!
