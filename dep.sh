#!/bin/bash

# greeter
paru -S greetd-tuigreet

# editor
paru -S nvim fzf npm
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git


# additional 
paru -S hyprmon-bin hyprpolkitagent thunar docker distrobox lazygit lazydocker tumbler vorta tailscale gh-cli telegram-desktop spotify vesktop gvfs gnome-disk-utility wireguard-tools
