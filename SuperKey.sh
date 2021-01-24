#!/bin/bash
var=$(wmctrl -lix |grep 'YOUR_PROGRAM') #check if program is opened in wmctrl and save to var
[[ ! -z "$var" ]] &&  # check if var is not empty ( not empty = program is already running)
	pidof YOUR_PROGRAM >/dev/null && wmctrl -lix |grep 'YOUR_PROGRAM'|cut -d ' ' -f 1 |xargs -i% wmctrl -i -a %  || #if is already running, select window
		YOUR_PROGRAM #if is not running, then run it!
