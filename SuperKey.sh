#!/bin/bash
var=$(wmctrl -lix |grep 'Your_program') #check if program is opened in wmctrl, and save output to var
[[ ! -z "$var" ]] &&  # check if var is not empty ( not empty = program is already running)
	pidof your_program >/dev/null && wmctrl -lix |grep 'Your_program'|cut -d ' ' -f 1 |xargs -i% wmctrl -i -a %  || #if it's already running, select window
		your_program #if it's not running, then run it!
