#!/bin/bash

# install.sh for Eymen's dotfiles
# installs nvim/lazyvim, waybar, and related configs

DOTFILES="$HOME/dotfiles"
CONFIG="$HOME/.config"

echo "starting dotfiles installation..."

backup_and_link() {
    local src="$1"
    local dest="$2"

    if [ -e "$dest" ]; then
        echo "backing up existing $dest to $dest.bak"
        mv "$dest" "$dest.bak"
    fi

    echo "linking $src -> $dest"
    ln -s "$src" "$dest"
}

# ensure config directories exist
mkdir -p "$CONFIG"

# lazyvim / nvim
mkdir -p "$CONFIG/nvim"
backup_and_link "$DOTFILES/nvim" "$CONFIG/nvim"

# waybar
mkdir -p "$CONFIG/waybar"
backup_and_link "$DOTFILES/waybar" "$CONFIG/waybar"

# optional: waypaper if you want
if [ -d "$DOTFILES/waypaper" ]; then
    mkdir -p "$CONFIG/waypaper"
    backup_and_link "$DOTFILES/waypaper" "$CONFIG/waypaper"
fi

echo "dotfiles installation complete!"
