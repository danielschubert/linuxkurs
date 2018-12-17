#!/bin/bash
clear
echo "Diese Infos werden von mysystem.sh bereitgestellt."

echo "Hallo, $USER"
echo

echo "Heute ist der `date \"+%d.%m.%Y - %H:%M:%S\"`, dies ist Woche Nr. `date +"%V"`."
echo
echo "Diese Benutzer sind im Moment verbunden:"
w | cut -d " " -f 1 - | grep -v USER | sort -u
echo
echo "Dies ist `uname -s` und wir laufen auf einem `uname -m` Prozessor."
echo

echo "Die uptime ist:"
uptime
echo

echo "Das ist alles!"
