#!/usr/bin/env bash
dconf dump /org/gnome/ > ../gnome/settings.dconf
echo "GNOME settings exported."
