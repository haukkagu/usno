#!/bin/bash
REPOPATH=$(dirname "$0")

cp ${REPOPATH}/usno /usr/share/X11/xkb/symbols
mkdir /etc/X11/xorg.conf.d
echo -e \
	'Section "InputClass"\n'\
	'	Identifier "system-keyboard"\n'\
	'	MatchIsKeyboard "on"\n'\
	'	Option "XkbLayout" "usno"\n'\
	'	Option "XkbModel" "pc102"\n'\
	'	Option "XkbOptions" "caps:swapescape,altwin:swap_lalt_lwin"\n'\
	'EndSection' > /etc/X11/xorg.conf.d/00-keyboard.conf
