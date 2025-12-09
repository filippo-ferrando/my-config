#!/bin/bash

# greeter
paru -S greetd-tuigreet
sudo mv ./config.tml /etc/greetd/config.toml

# editor
paru -S nvim fzf npm
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

# additional 
paru -S hyprmon-bin hyprpolkitagent thunar docker distrobox lazygit lazydocker tumbler vorta tailscale gh-cli telegram-desktop spotify vesktop gvfs gnome-disk-utility wireguard-tools

# my-alias
./aliases.sh

# dots
paru -S caelestia-shell
paru -S hyprpicker wl-clipboard cliphist inotify-tools app2unit wireplumber trash-cli foot fastfetch btop jq eza adw-gtk-theme papirus-icon-theme ttf-jetbrains-mono-nerd

# dots config
git clone git@github.com:filippo-ferrando/caelestia.git ~/.local/share/caelestia
cd ~/.config
ln -s ~/.local/share/caelestia/foot foot
ln -s ~/.local/share/caelestia/hypr hypr
ln -s ~/.local/share/caelestia/btop btop
ln -s ~/.local/share/caelestia/uwsm uwsm 

# hyprmon
cp ./hyprmon/*.json ~/.config/hyprmon/profiles/
