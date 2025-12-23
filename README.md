# Llylithe Dotfiles Reworked (Niri/Nord Theme)

> **A minimal, scrollable tiling Wayland compositor setup based on the Nord color palette.**

<img width="1920" height="1080" alt="Screenshot from 2025-12-22 17-50-35" src="https://github.com/user-attachments/assets/4bc87df6-278d-4841-a00a-f3ee3d85b206" />

## About

This repository contains my personal configuration files (dotfiles) for **Arch Linux**.

It is a **direct port** of the beautiful [Llylithe/olddotfiles](https://github.com/Llylithe/olddotfiles) setup, originally designed for a different environment. 

## Tech Stack

* **OS:** Arch Linux
* **Compositor:** [Niri](https://github.com/YaLTeR/niri)
* **Bar:** Waybar (Floating Nord Style)
* **Terminal:** Kitty
* **Shell:** Bash + Starship
* **Launcher:** Rofi (Wayland)
* **Lockscreen:** Hyprlock (with blur & screenshot effects)
* **Powermenu:** Wlogout
* **Notifications:** Mako
* **Theme:** Nordic (GTK) + Papirus-Dark (Icons)

## Installation

I have included an automated script to make the installation process easier. It handles dependencies (Official & AUR) and backups your current configs.

### 1. Clone the repository
```bash
git clone [https://github.com/leomorgzzz/Rework-LLylithe-Dotfiles-Niri-version-.git](https://github.com/leomorgzzz/Rework-LLylithe-Dotfiles-Niri-version-.git)
cd dotfiles-niri
```
### 2. Run the installer
```bash
chmod +x install.sh
./install.sh
```
Note: The script will backup your existing configurations to folders named _backup inside ~/.config/ so you don't lose anything.

### Another Screenshot

<img width="1920" height="1080" alt="Screenshot from 2025-12-22 17-50-46" src="https://github.com/user-attachments/assets/6067c41d-938f-4166-baa8-e45b257d0904" />


## Credits & Inspiration
This setup wouldn't be possible without the amazing work of Llylithe.

* Original Design: [Llylithe/olddotfiles](https://github.com/Llylithe/olddotfiles)
* Port & Niri Adaptation: [Leomorgzzz/](https://github.com/leomorgzzz/Rework-LLylithe-Dotfiles-Niri-version-)
