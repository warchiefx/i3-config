#!/usr/bin/bash

mkdir -p ~/.config/i3blocks/
mkdir -p ~/.config/dunst/
ln -sf `pwd`/i3blocks.conf ~/.config/i3blocks/config
ln -sf `pwd`/dunstrc ~/.config/dunst/dunstrc
