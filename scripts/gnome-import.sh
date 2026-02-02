#!/usr/bin/env bash
dconf load /org/gnome/ < ../gnome/settings.dconf
echo "GNOME settings imported."
