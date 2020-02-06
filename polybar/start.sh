#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch polybar
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload -c ~/.config/i3/polybar/config top &
    MONITOR=$m polybar --reload -c ~/.config/i3/polybar/config bottom &
  done
else
  polybar --reload -c ~/.config/i3/polybar/config top &
  polybar --reload -c ~/.config/i3/polybar/config bottom &
fi
