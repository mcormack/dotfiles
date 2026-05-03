#!/usr/bin/env bash
set -e

echo "=== Fedora first-boot install ==="

# ------------------------------
# System update
# ------------------------------
sudo dnf upgrade --refresh -y

# ------------------------------
# RPM Fusion
# ------------------------------
sudo dnf install -y \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf upgrade -y

# ------------------------------
# NVIDIA drivers
# ------------------------------
sudo dnf install -y akmod-nvidia xorg-x11-drv-nvidia-cuda

# ------------------------------
# DNF packages
# ------------------------------
sudo dnf install -y $(grep -v '^#' packages/fedora.txt)

# ------------------------------
# Flatpak
# ------------------------------
sudo dnf install -y flatpak
flatpak remote-add --if-not-exists flathub \
  https://flathub.org/repo/flathub.flatpakrepo

flatpak install -y flathub \
  $(grep -v '^#' packages/flatpak.txt)

# ------------------------------
# Shell
# ------------------------------
sudo chsh -s "$(which zsh)" "$USER"

echo "=== Install complete. REBOOT NOW. ==="
