killall copyq
killall flameshot
killall dunst

# Pywal Reload
#wal -Rn &
wal -Rntq &

# Polkit
#/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# Polybar initialization
cd $HOME/.config/polybar/ && ./launch.sh &

# Color bspwm
cd $HOME/.config/bspwm/ && ./colors.sh &

# walogram
# walogram -s &

# Cursor
xsetroot -cursor_name left_ptr

# nitrogen
nitrogen --restore &
# cd $HOME/.config/bspwm/ && ./wallpaper.sh &

# Notifications
dunst &

sleep 1

# Captures
flameshot &

# Portapapeles
copyq &
