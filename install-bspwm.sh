dir_actual=$(pwd)

# Download programs
sudo pacman -S noto-fonts
sudo pacman -S --needed $(cat programs.txt)

# Generate directories
xdg-user-dirs-update

# Backup Config directories
mkdir -p ~/.config/configs_backups/
mv ~/.config/alacritty{,} ~/.config/configs_backups/ 
mv ~/.config/bpytop{,} ~/.config/configs_backups/ 
mv ~/.config/bspwm{,} ~/.config/configs_backups/ 
mv ~/.config/copyq{,} ~/.config/configs_backups/ 
mv ~/.config/dunst{,} ~/.config/configs_backups/ 
mv ~/.config/flameshot{,} ~/.config/configs_backups/ 
mv ~/.config/gtk-2.0{,} ~/.config/configs_backups/ 
mv ~/.config/gtk-3.0{,} ~/.config/configs_backups/ 
mv ~/.config/mpd{,} ~/.config/configs_backups/ 
mv ~/.config/ncmpcpp{,} ~/.config/configs_backups/ 
mv ~/.config/neofetch{,} ~/.config/configs_backups/ 
mv ~/.config/nitrogen{,} ~/.config/configs_backups/ 
mv ~/.config/nvim{,} ~/.config/configs_backups/ 
mv ~/.config/polybar{,} ~/.config/configs_backups/ 
mv ~/.config/qt5ct{,} ~/.config/configs_backups/ 
mv ~/.config/qt6ct{,} ~/.config/configs_backups/ 
mv ~/.config/rofi{,} ~/.config/configs_backups/ 
mv ~/.config/sxhkd{,} ~/.config/configs_backups/ 
mv ~/.config/wal{,} ~/.config/configs_backups/

# Create directories
mkdir -p ~/.config/ && cp -r config/* ~/.config/
mkdir -p ~/.cache/ && cp -r cache/* ~/.cache/
mkdir -p ~/.fonts/
mkdir -p ~/.icons/
mkdir -p ~/.themes/
mkdir -p ~/.GTK-configs/

# Set Icons
tar -xf icons.tar.gz
mv -f .icons/* ~/.icons/

# Set Themes
tar -xf themes.tar.gz
mv -f .themes/* ~/.themes/

# Set Wallpapers
#tar -xf Wallpapers.tar.gz && cp -r Wallpapers/ "$(xdg-user-dir PICTURES)"
mkdir -p "$(xdg-user-dir PICTURES)"/Wallpapers
#mv -f Wallpapers/* "$(xdg-user-dir PICTURES)"/Wallpapers/
cp -r Wallpapers/* "$(xdg-user-dir PICTURES)"/Wallpapers/

# Scripts for change theme
cp -r GTK-configs/* ~/.GTK-configs/

# .xsettingsd config
cp xsettingsd ~/.xsettingsd

# .gtkrc-2.0 config
cp gtkrc-2.0 ~/.gtkrc-2.0

# wal --set
cp aliases ~/.aliases

# Walogram (Telegram theme)
cd ~/ && git clone https://codeberg.org/thirtysixpw/walogram
cp "$dir_actual/constantsTelegram.tdesktop-theme" ~/walogram/constants.tdesktop-theme
cd ~/walogram/ && sudo make install

# Download Pywal
pip install PyGObject --break-system-packages
pip install pywal --break-system-packages

# Download Pywalfox
pip install pywalfox --break-system-packages
pywalfox install
#Download https://addons.mozilla.org/en-US/firefox/addon/pywalfox/

# nitrogen-pywal execute
ln -s ~/.config/bspwm/nitrogen-pywal.sh ~/.local/bin/nitrogen-pywal.sh

# Path
echo '' >> ~/.bashrc
echo 'export VISUAL="${EDITOR}"' >> ~/.bashrc
echo 'export EDITOR="xed"' >> ~/.bashrc
echo 'export TERM="alacritty"' >> ~/.bashrc
echo 'export TERMINAL="alacritty"' >> ~/.bashrc
echo 'export BROWSER="firefox"' >> ~/.bashrc
echo 'export HISTORY_IGNORE="(ls|cd|pwd|exit|sudo reboot|history|cd -|cd ..)"' >> ~/.bashrc
echo '' >> ~/.bashrc
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
echo 'source $HOME/.aliases' >> ~/.bashrc

echo '' >> ~/.zshrc
echo 'export VISUAL="${EDITOR}"' >> ~/.zshrc
echo 'export EDITOR="xed"' >> ~/.zshrc
echo 'export TERM="alacritty"' >> ~/.zshrc
echo 'export TERMINAL="alacritty"' >> ~/.zshrc
echo 'export BROWSER="firefox"' >> ~/.zshrc
echo 'export HISTORY_IGNORE="(ls|cd|pwd|exit|sudo reboot|history|cd -|cd ..)"' >> ~/.zshrc
echo '' >> ~/.zshrc
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
echo 'source $HOME/.aliases' >> ~/.zshrc

sleep 1
source ~/.bashrc
source ~/.zshrc

# bpytop theme (symbolic link)
mkdir -p ~/.config/bpytop/themes/ && ln -s ~/.cache/wal/bpytopPywal.theme ~/.config/bpytop/themes/bpytopPywal.theme

# dunst theme (symbolic link)
mkdir -p ~/.config/dunst/ && ln -s ~/.cache/wal/dunstrc ~/.config/dunst/dunstrc
wal --theme Dracula

# Oomox install (themes GTK generator)
cd ~/ && git clone https://github.com/themix-project/oomox.git --recursive
cd ~/oomox && make -f po.mk install
mv ~/oomox/ ~/.oomox

# Execution permissions
chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/bspwm/*.sh
chmod +x ~/.config/polybar/*.sh
chmod -R +x ~/.GTK-configs/*.sh

# GTK y qt
cd ~/ && git clone https://aur.archlinux.org/qt5-styleplugins.git && cd ~/qt5-styleplugins && makepkg -si
cd ~/ && git clone https://aur.archlinux.org/qt6gtk2.git && cd ~/qt6gtk2 && makepkg -si

# Java Problems
echo '_JAVA_AWT_WM_NONREPARENTING=1' | sudo tee -a /etc/environment

# GTK theme for Qt
echo 'QT_QPA_PLATFORMTHEME=qt5ct' | sudo tee -a /etc/environment

# Ly Display Manager theme
sudo chmod 0777 /lib/systemd/system/ly.service
# Set Ly Display manager default
systemctl enable ly.service

# Set terminal default in Gnome and Cinnamon
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/alacritty
gsettings set org.cinnamon.desktop.default-applications.terminal exec /usr/bin/alacritty

# Volume initialize in 100%
pactl set-sink-volume @DEFAULT_SINK@ 100%

# Set colors all
~/.GTK-configs/Nord.sh

# neovim
#nvim -c ':call coc#util#install()' -c ':q'

# detects Dual Boot in grub
echo "GRUB_DISABLE_OS_PROBER=false" | sudo tee -a /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg

# Soluction:
# ➜  ~ sudo visudo
# visudo: no editor found (editor path = /usr/bin/vi)
sudo ln -s $(which nvim) /usr/bin/vi

# emacs
#cp -f emacs-config/init.el ~/.emacs.d/

# wallpapers dir for nitrogen
echo "dirs=/home/$(whoami)/Imágenes/Wallpapers;" >> ~/.config/nitrogen/nitrogen.cfg

# tmux config
#sudo pacman -S --needed tmux
#cp tmux.conf ~/.tmux.conf
#tmux source-file ~/.tmux.conf
