#!/bin/bash

# --- Couleurs pour le terminal ---
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}🚀 Début de l'installation de ton Rice...${NC}"

# 1. Mise à jour système et installation des paquets clés
echo -e "${GREEN}📦 Installation des paquets...${NC}"
sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm hyprland waybar kitty rofi swanc stow git

# Installation de Ghostty via AUR (CachyOS a souvent paru/yay pré-installé)
paru -S --noconfirm ghostty

# 2. Gestion des liens symboliques avec GNU Stow
# Stow est magique : il crée les liens de ~/dotfiles vers ~/.config automatiquement
echo -e "${GREEN}🔗 Création des liens symboliques...${NC}"
cd ~/dotfiles
stow hypr waybar kitty ghostty rofi swaync

# 3. Installation du thème GRUB
echo -e "${GREEN}🎨 Configuration de GRUB...${NC}"
sudo cp -r ~/dotfiles/grub/catppuccin-mocha-grub-theme /boot/grub/themes/
sudo cp ~/dotfiles/grub/default-grub.bak /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg

echo -e "${GREEN}✅ Installation terminée ! Reboot pour voir la magie.${NC}"
