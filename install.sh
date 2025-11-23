#!/bin/bash

echo "Installing white-theme dotfiles..."

# --- nvim ---
mkdir -p ~/.config/nvim
if [ -f ~/.config/nvim/init.lua ]; then
    mv ~/.config/nvim/init.lua ~/.config/nvim/init.lua.bak
    echo "Backed up old nvim init.lua"
fi
ln -sf "$(pwd)/init.lua" ~/.config/nvim/init.lua

# --- waybar ---
mkdir -p ~/.config/waybar
for file in config.jsonc style.css; do
    if [ -f ~/.config/waybar/$file ]; then
        mv ~/.config/waybar/$file ~/.config/waybar/${file}.bak
        echo "Backed up old $file"
    fi
    ln -sf "$(pwd)/$file" ~/.config/waybar/$file
done

# --- hyprland ---
mkdir -p ~/.config/hypr
if [ -f ~/.config/hypr/hyprland.conf ]; then
    mv ~/.config/hypr/hyprland.conf ~/.config/hypr/hyprland.conf.bak
    echo "Backed up old hyprland.conf"
fi
ln -sf "$(pwd)/hyprland.conf" ~/.config/hypr/hyprland.conf

echo "White-theme installed successfully!"
