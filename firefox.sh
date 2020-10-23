#!/bin/bash
pidof firefox >/dev/null && wmctrl -lix |grep 'Firefox'|cut -d ' ' -f 1 |xargs -i% wmctrl -i -a % || firefox
