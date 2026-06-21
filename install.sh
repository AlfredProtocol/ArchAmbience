#!/bin/bash

set -e

echo " DOTFILES PRO INSTALLER - STARTING..."

DOTFILES="$HOME/dotfiles"

# =========================
# 1. CHECK SYSTEM
# =========================
echo " Checking system..."

if ! command -v pacman &>/dev/null; then
    echo " This installer is for Arch Linux only."
    exit 1
fi

# =========================
# 2. INSTALL PACKAGES
# =========================
echo " Installing packages..."

sudo pacman -S --needed - <"$DOTFILES/pkglist.txt"

# AUR (yay required)
if command -v yay &>/dev/null; then
    echo " Installing AUR packages..."
    yay -S --needed - <"$DOTFILES/aurlist.txt"
else
    echo " yay not found, skipping AUR packages"
fi

# =========================
# 3. CONFIGURATION SYMLINKS
# =========================
echo " Linking configs..."

mkdir -p ~/.config

ln -sf "$DOTFILES/bspwm" ~/.config/bspwm
ln -sf "$DOTFILES/sxhkd" ~/.config/sxhkd
ln -sf "$DOTFILES/fastfetch" ~/.config/fastfetch
ln -sf "$DOTFILES/kitty" ~/.config/kitty
ln -sf "$DOTFILES/picom" ~/.config/picom
ln -sf "$DOTFILES/rofi" ~/.config/rofi
ln -sf "$DOTFILES/nvim" ~/.config/nvim
ln -sf "$DOTFILES/polybar" ~/.config/polybar

# scripts
mkdir -p ~/.local/bin
ln -sf "$DOTFILES/scripts/"* ~/.local/bin/ 2>/dev/null || true

# =========================
# 4. WALLPAPERS
# =========================
echo " Setting wallpapers..."

mkdir -p ~/Pictures/wallpapers
ln -sf "$DOTFILES/wallpapers/"* ~/Pictures/wallpapers/ 2>/dev/null || true

# =========================
# 5. PERMISSIONS
# =========================
echo " Setting permissions..."

chmod +x ~/.config/bspwm/bspwmrc 2>/dev/null || true
chmod +x ~/.config/sxhkd/sxhkdrc 2>/dev/null || true
chmod +x ~/.local/bin/* 2>/dev/null || true

# =========================
# 6. FINISH
# =========================
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo " DOTFILES INSTALLED SUCCESSFULLY"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo " Next steps:"
echo "1. Start BSPWM session"
echo "2. Reboot if needed"
echo "3. Enjoy your setup "
echo ""
