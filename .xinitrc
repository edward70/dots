# slstatus
slstatus &

# wallpaper
feh --bg-fill ~/Pictures/wallpaper.jpg

# gnome keyring for nm-applet
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

# update config
xrdb ~/.Xresources &

# sys tray icons
nm-applet &
pnmixer &
flameshot &

# compositor
picom --daemon

# dwm log
exec dwm > ~/.dwm.log
