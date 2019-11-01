#!/bin/sh

mkdir -p ~/.config/dunst/
ln -sf `pwd`/i3blocks ~/.config/i3blocks
ln -sf `pwd`/dunstrc ~/.config/dunst/dunstrc

mkdir -p ~/.config/systemd/user/
ln -sf `pwd`/systemd/keychain.service ~/.config/systemd/user/keychain.service
systemctl --user enable keychain.service
