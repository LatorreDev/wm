# Kill xsettingsd
killall xsettingsd &

# GTK theme
~/.oomox/plugins/theme_oomox/change_color.sh ~/.cache/wal/oomox_lcars

# Icon theme
~/.oomox/plugins/icons_archdroid/archdroid-icon-theme/change_color.sh ~/.cache/wal/oomox_lcars

sleep 1 &

# Reload GTK and Icons
xsettingsd &

sleep 1

killall xsettingsd
