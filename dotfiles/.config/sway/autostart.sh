#!/usr/bin/env sh
fcitx5 &
blueberry-tray &
firewall-applet &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
gtk-launch org.keepassxc.KeePassXC.desktop
mako &
gammastep &
playerctld daemon &
