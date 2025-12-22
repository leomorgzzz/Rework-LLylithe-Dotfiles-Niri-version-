#!/bin/bash

CYAN='\033[0;36m'
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${CYAN}--- Starting Dotfiles Installation (Niri + Nord) ---${NC}"

if ! command -v yay &> /dev/null; then
    echo -e "${CYAN}Installing yay...${NC}"
    sudo pacman -S --needed base-devel git
    git clone https://aur.archlinux.org/yay-bin.git
    cd yay-bin && makepkg -si --noconfirm
    cd .. && rm -rf yay-bin
fi

echo -e "${CYAN}Installing official packages...${NC}"
sudo pacman -S --needed --noconfirm \
    niri waybar kitty starship mako swww rofi-wayland \
    nwg-look papirus-icon-theme ttf-jetbrains-mono-nerd ttf-firacode-nerd \
    fastfetch libnotify polkit-gnome

echo -e "${CYAN}Installing AUR packages...${NC}"
yay -S --needed --noconfirm hyprlock wlogout nordic-theme

echo -e "${CYAN}Deploying configurations...${NC}"
mkdir -p "$HOME/.config"

configs=("niri" "waybar" "kitty" "mako" "rofi" "hypr" "wlogout")

for item in "${configs[@]}"; do
    if [ -d "./config/$item" ]; then
        [ -d "$HOME/.config/$item" ] && mv "$HOME/.config/$item" "$HOME/.config/${item}_backup"
        cp -r "./config/$item" "$HOME/.config/"
        echo -e "${GREEN}[OK]${NC} $item configuration deployed."
    fi
done

cp ./config/starship.toml "$HOME/.config/" 2>/dev/null

echo -e "${CYAN}Installing user scripts...${NC}"
mkdir -p "$HOME/.config/scripts"
if [ -d "./scripts" ]; then
    cp -r ./scripts/* "$HOME/.config/scripts/"
    chmod +x "$HOME/.config/scripts/"*.sh
fi

echo -e "${CYAN}Configuring shell...${NC}"
if ! grep -q "starship init bash" "$HOME/.bashrc"; then
    echo 'eval "$(starship init bash)"' >> "$HOME/.bashrc"
fi

if ! grep -q "fastfetch" "$HOME/.bashrc"; then
    echo 'fastfetch' >> "$HOME/.bashrc"
fi

echo -e "${GREEN}--- Installation Completed Successfully! ---${NC}"
