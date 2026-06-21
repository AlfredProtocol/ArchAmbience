#!/bin/bash

ip_address=$(/bin/cat /home/alfredprotocol/.config/bin/target | awk '{print $1}')
machine_name=$(/bin/cat /home/alfredprotocol/.config/bin/target | awk '{print $2}')

if [ $ip_address ] && [ $machine_name ]; then
    echo "%{F#e51d0b}%{T2}󰯐%{T-}  %{F#ffffff}$ip_address%{u-} - $machine_name"
else
    echo "%{F#e51d0b}%{T2}󰯐%{T-}  %{u-}%{F#ffffff} No target"
fi
