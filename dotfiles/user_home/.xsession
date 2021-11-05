#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && , "$f"
    done
    unset f
fi

# Composer
picom &

# Network
# nm-applet &

# Java Fonts
# xsettingsd &

# Wallpaper
feh --bg-fill .wallpapers/main.png --bg-fill .wallpapers/second.png &

# Audio
pulseaudio &

# Overlay Bar
# xob-pulse-py | xob -s pulse &
# xob-brightness-js | xob -s brightness &

