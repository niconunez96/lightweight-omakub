#!/bin/bash

envsubst < ~/.local/share/omakub/configs/xcompose > ~/.XCompose
ibus restart
/usr/bin/gsettings set org.gnome.desktop.input-sources xkb-options "['compose:caps']"
