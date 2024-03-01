killall xsettingsd

# gtk3 theme
sed -i '2s/.*/gtk-theme-name=oomox-Nord/' ~/.config/gtk-3.0/settings.ini
sed -i '3s/.*/gtk-icon-theme-name=oomox-Nord/' ~/.config/gtk-3.0/settings.ini

# xsettingsd
sed -i '1s/.*/Net\/ThemeName "oomox-Nord"/' ~/.xsettingsd
sed -i '2s/.*/Net\/IconThemeName "oomox-Nord"/' ~/.xsettingsd

# gtk2 and qt theme
sed -i '1s~.*~include "/home/mike/.themes/oomox-Nord/gtk-2.0/gtkrc"~' ~/.gtkrc-2.0
sed -i '2s/.*/gtk-icon-theme-name = "oomox-Nord"/' ~/.gtkrc-2.0
sed -i '3s/.*/gtk-font-name="Hurmit Nerd Font Light 9"/' ~/.gtkrc-2.0

sed -i '1s~.*~include "/home/mike/.themes/oomox-Nord/gtk-2.0/gtkrc"~' ~/.gtkrc.mine
sed -i '2s/.*/gtk-icon-theme-name = "oomox-Nord"/' ~/.gtkrc.mine
sed -i '3s/.*/gtk-font-name="Hurmit Nerd Font Light 9"/' ~/.gtkrc.mine

sed -i '4s/.*/icon_theme=oomox-Nord/' ~/.config/qt6ct/qt6ct.conf
sed -i '4s/.*/icon_theme=oomox-Nord/' ~/.config/qt5ct/qt5ct.conf

# Reload GTK theme
xsettingsd &
sleep 1
killall xsettingsd

# pywal change theme
wal --theme Nord
~/.config/bspwm/colors.sh

# walogram (telegram theme)
walogram -s

# nitrogen Wallpaper
cd "$(xdg-user-dir PICTURES)" && nitrogen --random --set-scaled Wallpapers/Nord
echo "cd "$(xdg-user-dir PICTURES)" && nitrogen --random --set-scaled Wallpapers/Nord" >> ~/.config/bspwm/wallpaper.sh

# ly Display Manager colors
cp ~/.cache/wal/ly.service /lib/systemd/system/ly.service
