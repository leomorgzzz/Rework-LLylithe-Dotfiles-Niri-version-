#!/bin/bash


option0="#  Bloquear"
option1="<- Salir"
option2="⏸  Suspender"
option3="o  Reiniciar"
option4="x  Apagar"


options="$option0\n$option1\n$option2\n$option3\n$option4"

chosen="$(echo -e "$options" | rofi -dmenu -i -p "Sistema" -theme-str 'window {width: 20%;} listview {lines: 6;}')"

case $chosen in
    $option0) ~/.config/scripts/lock.sh ;;
    $option1) niri msg action quit ;;
    $option2) systemctl suspend ;;
    $option3) systemctl reboot ;;
    $option4) systemctl poweroff ;;
esac
