#!/bin/bash

/usr/bin/gsettings set org.gnome.desktop.app-folders folder-children "['Utilities', 'Sundry', 'YaST', 'Updates', 'Xtra', 'LibreOffice', 'WebApps']"
/usr/bin/gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/Xtra/ apps "['gnome-language-selector.desktop', 'org.gnome.PowerStats.desktop', 'yelp.desktop', 'org.gnome.eog.desktop']"
/usr/bin/gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/LibreOffice/ name 'LibreOffice'
/usr/bin/gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/LibreOffice/ apps "['libreoffice-base.desktop', 'libreoffice-calc.desktop', 'libreoffice-draw.desktop', 'libreoffice-impress.desktop', 'libreoffice-math.desktop', 'libreoffice-startcenter.desktop', 'libreoffice-writer.desktop', 'libreoffice-xsltfilter.desktop']"
/usr/bin/gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/WebApps/ name 'Web Apps'
/usr/bin/gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/WebApps/ apps "['Basecamp.desktop', 'HEY.desktop']"
