#!/bin/sh
echo "%{F#2495e7}%{T2}󰈀%{T-}  %{F#ffffff}$(/usr/sbin/ifconfig ens33 | grep "inet " | awk '{print $2}')%{u-}"
