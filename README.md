# dotfiles

Minimal Fedora GNOME dotfiles for development and gaming.

This repository is designed to be:

- Simple
- Reproducible
- Low maintenance

No heavy theming, no excessive automation.

---

## What This Repo Configures

- Fedora Workstation (GNOME)
- Zsh shell
- Git defaults
- Core development tools
- Gaming setup (Steam, Proton tools)
- Minimal GNOME extensions
- GNOME settings via dconf export/import

---

## How You Actually Use This

### Fresh Install

1. Install Fedora Workstation
2. Clone this repository
3. Run:

    ```bash
    ./install.sh
    ```

4. Reboot
5. Run

    ```bash
    ./post-reboot.sh
    ```

6. Install GNOME extensions manually (see gnome/extensions.txt)
7. Configure GNOME once, then export settings.

### Export GNOME Settings

After configuring GNOME

```bash
scripts/gnome-export.sh
```

Commit the changes.

### Restore GNOME Settings

On a new install:

```bash
scripts/gnome-import.sh
```

### Package Management Rules

- DNF → system tools, CLI utilities, daemons
- Flatpak → GUI applications
- Scripts → niche or fast-moving tools

### Notes

- GNOME extensions are installed manually on purpose
