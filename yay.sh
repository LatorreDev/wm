cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
sudo pacman -Rs qt5ct qt6ct
yay -Rs qt5-styleplugins qt6gtk2
yay -S qt5-styleplugins qt6gtk2
sudo pacman -S qt5ct qt6ct
