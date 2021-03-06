#!/bin/bash
while [ "$select" != "NO" -a "$select" != "YES" ]; do
    select=$(echo -e 'NO\nYES' | dmenu -nb '#151515' -nf '#999999' -sb '#FFCB25' -sf '#000000' -fn '-*-*-medium-r-normal-*-*-*-*-*-*-100-*-*' -i -p "Do you want to shutdown the computer?")
    [ -z "$select" ] && exit 0
done
[ "$select" = "NO" ] && exit 0
poweroff
