#!/bin/bash

# install.sh for Eymen's dotfiles
# sets up nvim/lazyvim, waybar, waypaper, hypr configs

DOTFILES="$HOME/dotfiles"
CONFIG="$HOME/.config"

echo "starting dotfiles installation..."

backup_and_link() {
    local src="$1"
    local dest="$2"

    if [ -e "$dest" ]; then
        echo "backing up existing $dest -> $dest.bak"
        mv "$dest" "$dest.bak"
    fi

    echo "linking $src -> $dest"
    ln -s "$src" "$dest"
}

mkdir -p "$CONFIG"

# nvim / lazyvim
echo "setting up nvim / lazyvim..."
if [ ! -d "$CONFIG/nvim" ]; then
    mkdir -p "$CONFIG/nvim"
fi
backup_and_link "$DOTFILES/nvim" "$CONFIG/nvim"

# optional: auto-install LazyVim if not present
if [ ! -d "$CONFIG/nvim/lazy" ]; then
    echo "LazyVim not found, installing..."
    git clone --filter=blob:none https://github.com/LazyVim/starter "$CONFIG/nvim/lazy" --branch=main
fi

# waybar
echo "setting up waybar..."
mkdir -p "$CONFIG/waybar"
backup_an_
