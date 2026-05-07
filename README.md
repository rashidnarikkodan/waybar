# Premium Unified Waybar Theme

A modern, high-contrast, and "Island" style Waybar configuration designed for Hyprland. This theme features a floating layout, a custom power drawer, and advanced system monitoring with a "Catppuccin Mocha" inspired color palette.

## 🚀 Features
- **Floating Island Design**: Sleek modules with rounded corners and subtle glows.
- **Power Drawer**: A built-in, expandable power menu (Lock, Suspend, Logout, Reboot, Shutdown).
- **Modern Tooltips**: Curved, high-contrast tooltips with a perfectly aligned monospace calendar.
- **Dynamic Monitoring**: Real-time CPU, Memory, Disk, and Temperature tracking.
- **Blinking Animations**: Critical temperature and battery alerts.

---

## 🛠️ Dependencies

To use this configuration fully, you need to install the following components:

### 1. Essential Fonts
These are required for the icons and layout to display correctly.
- **JetBrainsMono Nerd Font** (Crucial for all icons)
- **Roboto** or **Inter** (For UI text)

### 2. Core Applications
- **Waybar**: The status bar itself.
- **Hyprland**: The tiling compositor this bar is built for.
- **Hyprlock**: For the screen locking functionality.

### 3. Utility Tools (for click actions)
- **Kitty**: Default terminal for pop-up tools.
- **Htop**: CPU and Memory monitoring.
- **NetworkManager**: Provides `nmtui` for WiFi settings.
- **Blueman**: Provides `blueman-manager` for Bluetooth.
- **Pavucontrol**: For advanced audio control.
- **Ncdu**: For the disk usage analyzer.
- **Lm_sensors**: Provides the `sensors` command for temperature monitoring.

---

## 📥 Installation

### Arch Linux (Pacman & AUR)
Run the following commands to install everything at once:

**Standard Repos:**
```bash
sudo pacman -S waybar hyprland hyprlock kitty htop networkmanager blueman pavucontrol ncdu lm_sensors upower
```

**Fonts (AUR):**
```bash
# Using yay
yay -S ttf-jetbrains-mono-nerd ttf-roboto
```

### Fedora
```bash
sudo dnf install waybar hyprland hyprlock kitty htop NetworkManager-tui blueman pavucontrol ncdu lm_sensors upower jetbrains-mono-fonts-all
```

---

## 🔧 Setup

1. **Backup your current config**:
   ```bash
   mv ~/.config/waybar ~/.config/waybar_backup
   ```

2. **Clone/Copy this folder**:
   Ensure the files are placed in `~/.config/waybar/`:
   - `config.jsonc`
   - `style.css`

3. **Reload Waybar**:
   ```bash
   pkill waybar && waybar &
   ```

## ⌨️ Usage Tips
- **Power Menu**: Click the Power icon (⏻) on the far right to expand the drawer.
- **Calendar**: Hover over the clock to see the modern curved calendar.
- **Network/Audio**: Left-click for settings, right-click/scroll for quick actions (like muting or volume).
- **Terminal Tools**: Clicking system modules like CPU or RAM will launch `htop` in a Kitty terminal for detailed viewing.
