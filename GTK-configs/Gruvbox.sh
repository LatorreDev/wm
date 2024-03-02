killall xsettingsd

# gtk3 theme
sed -i '2s/.*/gtk-theme-name=oomox-Gruvbox/' ~/.config/gtk-3.0/settings.ini
sed -i '3s/.*/gtk-icon-theme-name=oomox-Gruvbox/' ~/.config/gtk-3.0/settings.ini

# xsettingsd
sed -i '1s/.*/Net\/ThemeName "oomox-Gruvbox"/' ~/.xsettingsd
sed -i '2s/.*/Net\/IconThemeName "oomox-Gruvbox"/' ~/.xsettingsd

# gtk2 and qt theme
sed -i '1s~.*~include "/home/mike/.themes/oomox-Gruvbox/gtk-2.0/gtkrc"~' ~/.gtkrc-2.0
sed -i '2s/.*/gtk-icon-theme-name = "oomox-Gruvbox"/' ~/.gtkrc-2.0
sed -i '3s/.*/gtk-font-name="Hurmit Nerd Font Light 9"/' ~/.gtkrc-2.0

sed -i '1s~.*~include "/home/mike/.themes/oomox-Gruvbox/gtk-2.0/gtkrc"~' ~/.gtkrc.mine
sed -i '2s/.*/gtk-icon-theme-name = "oomox-Gruvbox"/' ~/.gtkrc.mine
sed -i '3s/.*/gtk-font-name="Hurmit Nerd Font Light 9"/' ~/.gtkrc.mine

sed -i '4s/.*/icon_theme=oomox-Gruvbox/' ~/.config/qt6ct/qt6ct.conf
sed -i '4s/.*/icon_theme=oomox-Gruvbox/' ~/.config/qt5ct/qt5ct.conf

# Reload GTK theme
xsettingsd &
sleep 1
killall xsettingsd

# pywal change theme
wal --theme Gruvbox
~/.config/bspwm/colors.sh

# walogram (telegram theme)
walogram -s

# nitrogen Wallpaper
cd "$(xdg-user-dir PICTURES)" && nitrogen --random --set-scaled Wallpapers/Gruvbox
echo "cd "$(xdg-user-dir PICTURES)" && nitrogen --random --set-scaled Wallpapers/Gruvbox" >> ~/.config/bspwm/wallpaper.sh

# ly Display Manager colors
cp ~/.cache/wal/ly.service /lib/systemd/system/ly.service

# neovim pywal theme
cp ~/.cache/wal/NvchadWal.lua ~/.local/share/nvim/lazy/base46/lua/base46/themes/pywal.lua
