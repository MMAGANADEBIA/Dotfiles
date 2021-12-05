#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
#polybar black >>/tmp/polybar1.log 2>&1 & disown
polybar example -r >>/tmp/polybar1.log 2>&1 & disown

#My configurations
#Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#Launch
polybar main -c ~/.config/polybar/config &
if xrandr -q | grep 'HDMI-1 connected'; then
  polybar second_monitor -c ~/.config/polybar/config &
fi

echo "Bars launched..."
