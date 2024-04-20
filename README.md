<h1 align="center">
    <img src="https://github.com/YeetlePrime/hyprppuccin-dots/blob/main/assets/catppuccin.png" width="100" alt="Catppuccin-Logo"/><br/>
    Hyprppuccin
</h1>
These are my personal dotfiles for my personal daily driver linux machine.
It is my goal to create a simple hyprland user-experience that is easy to install (in the best case with only one script) in order to kickstart with a solid default installation, that can be further customized manually.

## Used softare
- Display System: [wayland](https://wayland.freedesktop.org/) 
- Display/Login Manager: [sddm](https://github.com/sddm/sddm)
- Window Manager: [hyprland](https://hyprland.org/)
- Wallpaper Daemon: [swww](https://hyprland.org/)
- Statusbar: [waybar](https://github.com/Alexays/Waybar)
- Editor: [neovim](https://github.com/neovim/neovim)
- Shell: [zsh](https://wiki.archlinux.org/title/zsh)
- Terminal: [kitty](https://github.com/kovidgoyal/kitty)
- File Manager: [dolphin](https://apps.kde.org/de/dolphin/)
- Soundserver: [pulseaudio](https://wiki.archlinux.org/title/PulseAudio)
- LogoutMenu: [wlogout](https://github.com/ArtsyMacaw/wlogout)
- Session Lock: [swaylock-effects](https://github.com/mortie/swaylock-effects)

## Installation
1. Install all the listed dependencies
1. enable sddm as display manager `systemctl enable sddm`
1. Clone the repository `git clone --recurse-submodules --remote-submodules https://github.com/YeetlePrime/hyprppuccin-dots`
1. Cd into repository `cd hyprppuccin-dots`
1. Execute the install script `sudo devscripts/install.sh` (sudo is needed for sddm config) WARNING!! Your configs for the same packages will be overwritten. You may create a backup beforehand.

## Where to customize
### SDDM (Display/Login Manager)
The config file `sddm.conf` is located at `/etc/sddm.conf.d`.
It can be renamed and edited to your liking.  
The themes are located at `/usr/share/sddm/themes`. The default theme for hyprppuccin is a slightly modified version of [sddm-astronaut-theme](https://github.com/Keyitdev/sddm-astronaut-theme). This theme can be further customized in `/usr/share/sddm/themes/sddm-astronaut-theme/theme.conf`.

### Hyprland (Window Manager)
The files for hyprland configurations are located at `~/.config/hypr`. The main configuration file is `hyprland.conf`.

### swww (Background)
The background configuration is located inside the hyprland configuration. The background is set on hyprland startup inside `~/.config/hypr/hyprland.conf` (an `exec-once` statement in the launch category).

### neovim (editor)
My personal [neovim configuration](https://github.com/YeetlePrime/nvim-config) can be found at `~/.config/nvim`.

### zsh (Shell)
This is still a work in progress. Configuration can be found at `~/.zshrc` and `~/.zsh`.

### Kitty (Terminal)
This is still a work in progress. Configuration can be found at `~/.config/kitty`.

### Dolphin (File Manager)
This is very much a work in progress and barely customized.

### wlogout (Logout Menu)
User specific configuration can be found at `~/.config/wlogout`. Global configuration can be found at `/etc/wlogout`.

### swaylock-effects (Session Lock)
Config can be found at `~/.config/swaylock/config`.

## TODOs
- Add automatic dependency installation to the install script (at least for pacman packages)
- Extend the waybar with some basic functionality (Bluetooth, Network, Screenshots, Hardware stats)
- Add logout functionality (pop-up to choose reboot/shutdown/lock/logout)
- Customize dolphin
- Customize zsh
- Add menu/application launcher (wofi, rofi or alike)
- Complete wlogout functionality
