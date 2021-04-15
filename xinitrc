#!/bin/sh

userresources=$HOME/.Xdefaults
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

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Dockd
#dockd --daemon &

# Display
#xrandr --output DP2-2 --2560x1440 --right-of eDP1 &

# Keyboard
setxkbmap se &

# Compositor
picom &

# NetworkManager
#nm-applet &

# Nextcloud
#nextcloud &

# Redshift
#redshift &

# Nitrogen
#nitrogen --restore &

# Loop
while true; do
	dwm >/dev/null 2>&1
done

#DWM
exec dwm

