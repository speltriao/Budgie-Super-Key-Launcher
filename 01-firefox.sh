#!/bin/bash
var=$(wmctrl -lix |grep 'Firefox') #check if program is opened in wmctrl and save to var
[[ ! -z "$var" ]] &&  # check if var is not empty ( not empty = program is already running)
	pidof firefox >/dev/null && wmctrl -lix |grep 'Firefox'|cut -d ' ' -f 1 |xargs -i% wmctrl -i -a %  || 
		firefox
