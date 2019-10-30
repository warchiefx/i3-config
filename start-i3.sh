#!/bin/bash
dbus-daemon --session &
start-pulseaudio-x11
eval `ssh-agent -s`
dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
exec /usr/bin/i3