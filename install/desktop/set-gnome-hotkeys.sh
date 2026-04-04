#!/bin/bash

# Alt+F4 is very cumbersome
/usr/bin/gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q']"
/usr/bin/gsettings set org.gnome.desktop.wm.keybindings switch-windows "@as []"
/usr/bin/gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "@as []"
/usr/bin/gsettings set org.gnome.desktop.wm.keybindings cycle-windows "['<Super>k']"
/usr/bin/gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward "['<Super>j']"
/usr/bin/dconf write /org/gnome/desktop/wm/keybindings/cycle-windows "['<Super>k']"
/usr/bin/dconf write /org/gnome/desktop/wm/keybindings/cycle-windows-backward "['<Super>j']"

# Make it easy to maximize like you can fill left/right
/usr/bin/gsettings set org.gnome.desktop.wm.keybindings maximize "['<Super>Up']"

# Make it easy to resize undecorated windows
/usr/bin/gsettings set org.gnome.desktop.wm.keybindings begin-resize "['<Super>BackSpace']"

# For keyboards that only have a start/stop button for music, like Logitech MX Keys Mini
/usr/bin/gsettings set org.gnome.settings-daemon.plugins.media-keys next "['<Shift>AudioPlay']"

# Full-screen with title/navigation bar
/usr/bin/gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['<Shift>F11']"

# Use 6 fixed workspaces instead of dynamic mode
/usr/bin/gsettings set org.gnome.mutter dynamic-workspaces false
/usr/bin/gsettings set org.gnome.desktop.wm.preferences num-workspaces 6

# Disable the hotkeys in the Dash to Dock extension (most likely culprit)
/usr/bin/gsettings set org.gnome.shell.extensions.dash-to-dock hot-keys false

# Use alt for pinned apps
/usr/bin/gsettings set org.gnome.shell.keybindings switch-to-application-1 "@as []"
/usr/bin/gsettings set org.gnome.shell.keybindings switch-to-application-2 "@as []"
/usr/bin/gsettings set org.gnome.shell.keybindings switch-to-application-3 "@as []"
/usr/bin/gsettings set org.gnome.shell.keybindings switch-to-application-4 "@as []"
/usr/bin/gsettings set org.gnome.shell.keybindings switch-to-application-5 "@as []"
/usr/bin/gsettings set org.gnome.shell.keybindings switch-to-application-6 "@as []"
/usr/bin/gsettings set org.gnome.shell.keybindings switch-to-application-7 "@as []"
/usr/bin/gsettings set org.gnome.shell.keybindings switch-to-application-8 "@as []"
/usr/bin/gsettings set org.gnome.shell.keybindings switch-to-application-9 "@as []"

/usr/bin/dconf write /org/gnome/shell/keybindings/switch-to-application-1 "@as []"
/usr/bin/dconf write /org/gnome/shell/keybindings/switch-to-application-2 "@as []"
/usr/bin/dconf write /org/gnome/shell/keybindings/switch-to-application-3 "@as []"
/usr/bin/dconf write /org/gnome/shell/keybindings/switch-to-application-4 "@as []"
/usr/bin/dconf write /org/gnome/shell/keybindings/switch-to-application-5 "@as []"
/usr/bin/dconf write /org/gnome/shell/keybindings/switch-to-application-6 "@as []"
/usr/bin/dconf write /org/gnome/shell/keybindings/switch-to-application-7 "@as []"
/usr/bin/dconf write /org/gnome/shell/keybindings/switch-to-application-8 "@as []"
/usr/bin/dconf write /org/gnome/shell/keybindings/switch-to-application-9 "@as []"

#
# Use super for workspaces
/usr/bin/gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Super>1']"
/usr/bin/gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Super>2']"
/usr/bin/gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Super>3']"
/usr/bin/gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Super>4']"
/usr/bin/gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 "['<Super>5']"
/usr/bin/gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 "['<Super>6']"

# Reserve slots for custom keybindings
/usr/bin/gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/']"

# Set ulauncher to Super+Space
/usr/bin/gsettings set org.gnome.desktop.wm.keybindings switch-input-source "@as []"
/usr/bin/gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'Ulauncher'
/usr/bin/gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'sh -c "pgrep -x ulauncher && { ulauncher-toggle || true; } || setsid -f ulauncher"'
/usr/bin/gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Super>space'

# Set flameshot (with the sh fix for starting under Wayland) on alternate print screen key
/usr/bin/gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ name 'Flameshot'
/usr/bin/gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ command 'sh -c -- "flameshot gui"'
/usr/bin/gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ binding '<Control>Print'

# Start a new alacritty window (rather than just switch to the already open one)
/usr/bin/gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ name 'New Alacritty Window'
/usr/bin/gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ command 'alacritty'
/usr/bin/gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ binding '<Shift><Alt>2'

# Start a new Chrome window (rather than just switch to the already open one)
/usr/bin/gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/ name 'New Chrome Window'
/usr/bin/gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/ command 'google-chrome --new-window'
/usr/bin/gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/ binding '<Shift><Alt>1'

# Turn bightness down on Apple monitor (requires ASDControl installed)
/usr/bin/gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/ name 'Apple Brightness Down (ASDControl)'
/usr/bin/gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/ binding '<Control>F1'
/usr/bin/gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/ command "sh -c 'asdcontrol \$(asdcontrol --detect /dev/usb/hiddev* 2>/dev/null | grep ^/dev/usb/hiddev | cut -d: -f1) -- -5000'"

# Turn bightness up on Apple monitor (requires ADSControl installed)
/usr/bin/gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5/ name 'Apple Brightness Up (ASDControl)'
/usr/bin/gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5/ binding '<Control>F2'
/usr/bin/gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5/ command "sh -c 'asdcontrol \$(asdcontrol --detect /dev/usb/hiddev* 2>/dev/null | grep ^/dev/usb/hiddev | cut -d: -f1) -- +5000'"

# Turn bightness up to max on Apple monitor (requires ADSControl installed)
/usr/bin/gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/ name 'Apple Brightness Max (ASDControl)'
/usr/bin/gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/ binding '<Control><Shift>F2'
/usr/bin/gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/ command "sh -c 'asdcontrol \$(asdcontrol --detect /dev/usb/hiddev* 2>/dev/null | grep ^/dev/usb/hiddev | cut -d: -f1) -- +60000'"
