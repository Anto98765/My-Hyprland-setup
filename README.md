<div align="center">




# 🌿 Hyprland Dotfiles

> *I made a Rice that brings together effciency, aesthetics, and ease of use.*

![Arch Linux](https://img.shields.io/badge/Arch_Linux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white)
![Hyprland](https://img.shields.io/badge/Hyprland-58E1FF?style=for-the-badge&logo=wayland&logoColor=black)
![Catppuccin](https://img.shields.io/badge/Catppuccin-CBA6F7?style=for-the-badge&logoColor=black)

</div>

---

## 📦 Stack

| Role | Tool |
|---|---|
| WM | [Hyprland](https://hyprland.org/) |
| Bar | Waybar |
| Launcher | Rofi |
| Terminal | Kitty |
| Shell | Fish |
| Notifications | SwayNC |
| Logout Menu | wlogout |
| Wallpaper Engine | matugen + awww + custom Rofi picker |

---

## ⚙️ Installation
>[!WARNING]
>Before procced to the installation, make sure to backup your Dotfiles.
> **Note:** These dotfiles are tailored for Arch Linux. Proceed with caution on other distros.

### 1. Prerequisites

```bash
# First update your system
sudo pacman -Syu
```


```bash
# Install Hyprland and core dependencies

# pacman packages
sudo pacman -S hyprland hypridle hyprlock hyprshot waybar rofi kitty fish awww swaync btop cava \
        cliphist wl-clipboard matugen nautilus neovim satty 

# yay packages
yay -S wlogout papirus-folders
```

### 2. Clone the repo

```bash
git clone https://github.com/Anto98765/dotfiles ~/dotfiles
cd ~/dotfiles
```

### 3. Copy files

```bash
cp -r .config/* ~/.config/
cp -r .local/bin/oh-my-posh ~/
cp -r .poshthemes ~/
cp -r .themes

```

### 4. Set Fish as default shell

```bash
chsh -s $(which fish)
```

### 5. Restart your PC


## ⌨️ Keybindings

### 🖥️ General

| Keybind | Action |
|---|---|
| `SUPER + RETURN` | Open terminal (Kitty) |
| `SUPER + Q` | Kill active window |
| `SUPER + E` | File manager |
| `SUPER + L` | Lock screen |
| `SUPER + ESC` | Logout menu (wlogout) |
| `SUPER + I` | Internet Manager (NetworkManager_dmenu) |

### 🪟 Windows & Layout

| Keybind | Action |
|---|---|
| `SUPER + D` | Toggle floating |
| `SUPER + F` | Toggle fullscreen |
| `SUPER + ← / → / ↑ / ↓` | Move focus |

### 🗂️ Workspaces

| Keybind | Action |
|---|---|
| `SUPER + 1–9` | Switch to workspace |
| `SUPER + SHIFT + 1–9` | Move window to workspace |

### 🚀 Apps

| Keybind | Action |
|---|---|
| `SUPER + M` | App launcher (Rofi) |
| `SUPER + W` | Wallpaper picker (Rofi) |
>[!Important]
>To use the wallpaper switcher make sure to put all wallpapers inside (~/Pictures/wallpapers) and rename all wallpapers like what i did in Pictures folder.
| `SUPER + B` | Browser (Brave) |

### 📸 Screenshot

| Keybind | Action |
|---|---|
| `PRINT` | Fullscreen screenshot |
| `SUPER + PRINT` | Region screenshot |

---

## 📁 Structure

```
dotfiles/
├── config/
│   ├── hypr/          # Hyprland config + animations
│   ├── waybar/        # Bar config & CSS
│   ├── rofi/          # Launcher & wallpaper picker themes
│   ├── kitty/         # Terminal theme
│   ├── fish/          # Shell config
│   ├── swaync/        # Notification center
│   └── wlogout/       # Logout screen
└── screenshots/
    └── preview.png
```

---

## 📄 License

MIT — feel free to use, modify, and share.

