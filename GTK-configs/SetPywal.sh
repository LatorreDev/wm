killall xsettingsd

# gtk3 theme
sed -i '2s/.*/gtk-theme-name=oomox-Pywal/' ~/.config/gtk-3.0/settings.ini
sed -i '3s/.*/gtk-icon-theme-name=oomox-Pywal/' ~/.config/gtk-3.0/settings.ini

# xsettingsd
sed -i '1s/.*/Net\/ThemeName "oomox-Pywal"/' ~/.xsettingsd
sed -i '2s/.*/Net\/IconThemeName "oomox-Pywal"/' ~/.xsettingsd

# gtk2 and qt theme
sed -i '1s~.*~include "/home/mike/.themes/oomox-Pywal/gtk-2.0/gtkrc"~' ~/.gtkrc-2.0
sed -i '2s/.*/gtk-icon-theme-name = "oomox-Pywal"/' ~/.gtkrc-2.0
sed -i '3s/.*/gtk-font-name="Hurmit Nerd Font Light 9"/' ~/.gtkrc-2.0

sed -i '1s~.*~include "/home/mike/.themes/oomox-Pywal/gtk-2.0/gtkrc"~' ~/.gtkrc.mine
sed -i '2s/.*/gtk-icon-theme-name = "oomox-Pywal"/' ~/.gtkrc.mine
sed -i '3s/.*/gtk-font-name="Hurmit Nerd Font Light 9"/' ~/.gtkrc.mine


sed -i '4s/.*/icon_theme=oomox-Pywal/' ~/.config/qt6ct/qt6ct.conf
sed -i '4s/.*/icon_theme=oomox-Pywal/' ~/.config/qt5ct/qt5ct.conf

sleep 1
# Reload GTK theme
xsettingsd &
sleep 1
killall xsettingsd

# pywal change theme
wal --theme SetPywal
~/.config/bspwm/colors.sh

# walogram (telegram theme)
walogram -s

# nitrogen Wallpaper
#cd "$(xdg-user-dir PICTURES)" && nitrogen --random --set-scaled Wallpapers/Pywal
#echo "cd "$(xdg-user-dir PICTURES)" && nitrogen --random --set-scaled Wallpapers/Pywal" >> ~/.config/bspwm/wallpaper.sh
nitrogen --set-scaled $(cat ~/.cache/wal/wal)

# ly Display Manager colors
cp ~/.cache/wal/ly.service /lib/systemd/system/ly.service

# Pywalfox
pywalfox update
