#!/usr/bin/env sh
fcitx5 &
blueberry-tray &
firewall-applet &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
keepassxc &
mako &
gammastep &
systemctl --user start kdeconnectd.service &
