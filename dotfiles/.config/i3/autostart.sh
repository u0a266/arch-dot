#!/usr/bin/env sh
picom -b &
fcitx5 &
parcellite &
blueberry-tray &
firewall-applet &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
nm-applet &
imwheel &
gtk-launch org.keepassxc.KeePassXC.desktop
gammastep -m randr &
light-locker &
playerctld daemon &
