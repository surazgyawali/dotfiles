#!/bin/bash
while true
do
    ac_adapter=$(acpi -a | cut -d' ' -f3 | cut -d- -f1)

    if ! [ "$ac_adapter" = "on" ]; then
        ## ac unplugged
        notify-send "BATTERY" "AC POWER IS UNPLUGGED,PREVENT SHUTDOWN BY PLUGGING IT ASAP."
        aplay /home/sz/.config/notify.wav
        fi
    ## wait 5 sec before repeating
    sleep 5
done
