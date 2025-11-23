===================================================
                 eymen's dotfiles
=

personal linux configs for wayland and vim setups.
mainly includes waybar, hyprland, lazyvim and some scripts i use to keep my workflow smooth.

---------------------------------------------------
included configs
---------------------------------------------------

- waybar       - custom status bar for sway/hyprland with dynamic modules and themes
- lazyvim/nvim - neovim setup with lazy-loaded plugins, optimized for speed
- hyprland     - compositor config with smart keybindings and workspace rules
- scripts      - misc shell scripts and helpers for daily tasks

---------------------------------------------------
philosophy
---------------------------------------------------

keep it minimal, modular and readable. configs are portable and easy to tweak, optimized for arch/arch-based distros. everything here is meant for learning or personal use, so feel free to adapt.

---------------------------------------------------
installation
---------------------------------------------------

backup your current configs first. clone the repo:

```bash
git clone https://github.com/eymen/dotfiles.git ~/dotfiles
cd ~/dotfiles
chmod +x install.sh
./install.sh
