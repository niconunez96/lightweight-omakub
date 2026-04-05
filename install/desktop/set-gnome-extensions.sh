#!/bin/bash

sudo apt install -y gnome-shell-extension-manager gir1.2-gtop-2.0 gir1.2-clutter-1.0
pipx install gnome-extensions-cli --system-site-packages

# Turn off default Ubuntu extensions
gnome-extensions disable tiling-assistant@ubuntu.com
gnome-extensions disable ubuntu-appindicators@ubuntu.com
gnome-extensions disable ubuntu-dock@ubuntu.com
gnome-extensions disable ding@rastersoft.com

# Pause to assure user is ready to accept confirmations
gum confirm "To install Gnome extensions, you need to accept some confirmations. Ready?"

# Install new extensions
gext install tactile@lundal.io
gext install just-perfection-desktop@just-perfection
gext install blur-my-shell@aunetx
gext install space-bar@luchrioh
gext install undecorate@sun.wxg@gmail.com
gext install tophat@fflewddur.github.io
gext install AlphabeticalAppGrid@stuarthayhurst

# Compile gsettings schemas in order to be able to set them
sudo cp ~/.local/share/gnome-shell/extensions/tactile@lundal.io/schemas/org.gnome.shell.extensions.tactile.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/just-perfection-desktop\@just-perfection/schemas/org.gnome.shell.extensions.just-perfection.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/blur-my-shell\@aunetx/schemas/org.gnome.shell.extensions.blur-my-shell.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/space-bar\@luchrioh/schemas/org.gnome.shell.extensions.space-bar.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/tophat@fflewddur.github.io/schemas/org.gnome.shell.extensions.tophat.gschema.xml /usr/share/glib-2.0/schemas/
sudo cp ~/.local/share/gnome-shell/extensions/AlphabeticalAppGrid\@stuarthayhurst/schemas/org.gnome.shell.extensions.AlphabeticalAppGrid.gschema.xml /usr/share/glib-2.0/schemas/
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

# Configure Tactile
/usr/bin/gsettings set org.gnome.shell.extensions.tactile col-0 1
/usr/bin/gsettings set org.gnome.shell.extensions.tactile col-1 1
/usr/bin/gsettings set org.gnome.shell.extensions.tactile col-2 0
/usr/bin/gsettings set org.gnome.shell.extensions.tactile col-3 0
/usr/bin/gsettings set org.gnome.shell.extensions.tactile row-0 1
/usr/bin/gsettings set org.gnome.shell.extensions.tactile row-1 0
/usr/bin/gsettings set org.gnome.shell.extensions.tactile layout-2-col-0 1
/usr/bin/gsettings set org.gnome.shell.extensions.tactile layout-2-col-1 1
/usr/bin/gsettings set org.gnome.shell.extensions.tactile layout-2-col-2 0
/usr/bin/gsettings set org.gnome.shell.extensions.tactile layout-2-col-3 0
/usr/bin/gsettings set org.gnome.shell.extensions.tactile layout-2-row-0 1
/usr/bin/gsettings set org.gnome.shell.extensions.tactile layout-2-row-1 1
/usr/bin/gsettings set org.gnome.shell.extensions.tactile layout-2-row-2 0
/usr/bin/gsettings set org.gnome.shell.extensions.tactile tile-0-0 "['Left']"
/usr/bin/gsettings set org.gnome.shell.extensions.tactile tile-1-0 "['Right']"
/usr/bin/gsettings set org.gnome.shell.extensions.tactile tile-0-1 "['a']"
/usr/bin/gsettings set org.gnome.shell.extensions.tactile tile-1-1 "['s']"
/usr/bin/gsettings set org.gnome.shell.extensions.tactile gap-size 15

# Configure Just Perfection
/usr/bin/gsettings set org.gnome.shell.extensions.just-perfection animation 2
/usr/bin/gsettings set org.gnome.shell.extensions.just-perfection dash-app-running true
/usr/bin/gsettings set org.gnome.shell.extensions.just-perfection workspace true
/usr/bin/gsettings set org.gnome.shell.extensions.just-perfection workspace-popup false

# Configure Blur My Shell
/usr/bin/gsettings set org.gnome.shell.extensions.blur-my-shell.appfolder blur false
/usr/bin/gsettings set org.gnome.shell.extensions.blur-my-shell.lockscreen blur false
/usr/bin/gsettings set org.gnome.shell.extensions.blur-my-shell.screenshot blur false
/usr/bin/gsettings set org.gnome.shell.extensions.blur-my-shell.window-list blur false
/usr/bin/gsettings set org.gnome.shell.extensions.blur-my-shell.panel blur false
/usr/bin/gsettings set org.gnome.shell.extensions.blur-my-shell.overview blur true
/usr/bin/gsettings set org.gnome.shell.extensions.blur-my-shell.overview pipeline 'pipeline_default'
/usr/bin/gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock blur true
/usr/bin/gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock brightness 0.6
/usr/bin/gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock sigma 30
/usr/bin/gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock static-blur true
/usr/bin/gsettings set org.gnome.shell.extensions.blur-my-shell.dash-to-dock style-dash-to-dock 0

# Configure Space Bar
/usr/bin/gsettings set org.gnome.shell.extensions.space-bar.behavior smart-workspace-names false
/usr/bin/gsettings set org.gnome.shell.extensions.space-bar.shortcuts enable-activate-workspace-shortcuts false
/usr/bin/gsettings set org.gnome.shell.extensions.space-bar.shortcuts enable-move-to-workspace-shortcuts true
/usr/bin/gsettings set org.gnome.shell.extensions.space-bar.shortcuts open-menu "@as []"

# Configure TopHat
/usr/bin/gsettings set org.gnome.shell.extensions.tophat show-icons false
/usr/bin/gsettings set org.gnome.shell.extensions.tophat show-cpu false
/usr/bin/gsettings set org.gnome.shell.extensions.tophat show-disk false
/usr/bin/gsettings set org.gnome.shell.extensions.tophat show-mem false
/usr/bin/gsettings set org.gnome.shell.extensions.tophat show-fs false
/usr/bin/gsettings set org.gnome.shell.extensions.tophat network-usage-unit bits

# Configure AlphabeticalAppGrid
/usr/bin/gsettings set org.gnome.shell.extensions.alphabetical-app-grid folder-order-position 'end'
