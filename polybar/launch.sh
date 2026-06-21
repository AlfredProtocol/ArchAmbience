#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

## Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

## Launch

## Left bar
polybar log -c ~/.config/polybar/current.ini &
#barra de ip
polybar secondary -c ~/.config/polybar/current.ini &

## Right hora
polybar top -c ~/.config/polybar/current.ini &
# shutdown button
polybar primary -c ~/.config/polybar/current.ini &
# right bar target
polybar target -c ~/.config/polybar/current.ini &
# vpn status
polybar vpn_status -c ~/.config/polybar/current.ini &

## Center bar
polybar primary -c ~/.config/polybar/workspace.ini &
