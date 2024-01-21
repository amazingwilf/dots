#!/bin/bash

sudo pacman -S xorg \
  xclip \
  alacritty \
  dunst \
  libnotify \
  imlib2 \
  lxappearance \
  polkit-gnome \
  nitrogen \
  gnome-themes-extra \
  papirus-icon-theme \
  ttf-ubuntu-nerd \
  ttf-ubuntu-mono-nerd \
  ttf-meslo-nerd \
  ttf-jetbrains-mono-nerd \
  rofi \
  dmenu \
  firefox \
  firefox-i18n-en-gb \
  thunar \
  thunar-media-tags-plugin \
  thunar-archive-plugin \
  thunar-volman \
  ristretto \
  tumbler \
  xarchiver \
  imagemagick \
  xcolor \
  gpick \
  jq \
  pulsemixer

mkdir -p ~/.local/src && cd ~/.local/src
git clone https://aur.archlinux.org/paru-bin
cd paru-bin
makepkg -si

cd ~/.local/src
git clone https://aur.archlinux.org/picom-jonaburg-git
cd picom-jonaburg-git
makepkg -si

cd ~/.local/src
git clone https://github.com/amazingwilf/dwm
cd dwm
make clean && make && sudo make install
mkdir -p ~/.local/share/dwm
cp autoastart.sh ~/.local/share/dwm

cd ~/.local/src
git clone https://github.com/amazingwilf/dmenu
cd dmenu
make clean && make && sudo make install

cd ~/.local/src
git clone https://github.com/amazingwilf/st
cd st
make clean && make && sudo make install

cd ~/.local/src
git clone https://github.com/amazingwilf/dotfiles
cd dotfiles
cp .Xrecources ~
cp .bashrc ~
cp .bash_aliases ~
cp -r .config/alacritty ~/.config/
cp -r .config/dunst ~/.config/
cp -r .config/nvim ~/.config/
cp -r .config/picom ~/.config/

paru -S bibata-cursor-theme-bin \
  light 

cd ~
sftp -P 222 www.badelephant.co.uk:config
mv config .ssh
ssh-keygen -t ed25519
ssh-copy-id bem
ssh-copy-id dotfiles

