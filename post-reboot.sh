#!/usr/bin/env bash
set -e

echo "=== Post-reboot setup ==="

# ------------------------------
# NVIDIA sanity check
# ------------------------------
echo "Checking NVIDIA..."
nvidia-smi || echo "⚠️ NVIDIA not ready yet"

# ------------------------------
# GNOME settings (if present)
# ------------------------------
if [ -f gnome/settings.dconf ]; then
  echo "Applying GNOME settings..."
  dconf load /org/gnome/ < gnome/settings.dconf
fi

echo "=== Post-reboot done ==="
