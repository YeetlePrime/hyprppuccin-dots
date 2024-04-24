<h1 align="center">
    <img src="https://github.com/YeetlePrime/hyprppuccin-dots/blob/main/assets/catppuccin.png" width="100" alt="Catppuccin-Logo"/><br/>
    Hyprppuccin
</h1>

These are my personal dotfiles for my personal daily driver linux machine.
It is my goal to create a simple hyprland user-experience that is easy to install (in the best case with only one script) in order to kickstart with a solid default installation, that can be further customized manually.  
The theme is heavily inspired by the catppuccin hyprland theme from [hyprdots](https://github.com/prasanthrangan/hyprdots), but takes out a lot of the complexity with dynamic customization.


## Used software
- Display System: [wayland](https://wayland.freedesktop.org/) 
- Display/Login Manager: [sddm](https://github.com/sddm/sddm)
- Window Manager: [hyprland](https://hyprland.org/)
- Wallpaper Daemon: [swww](https://hyprland.org/)
- Statusbar: [waybar](https://github.com/Alexays/Waybar)
- Editor: [neovim](https://github.com/neovim/neovim)
- Shell: [zsh](https://wiki.archlinux.org/title/zsh)
- Shell Customizations: [starship](https://starship.rs/)
- Terminal: [kitty](https://github.com/kovidgoyal/kitty)
- File Manager: [dolphin](https://apps.kde.org/de/dolphin/)
- LogoutMenu: [wlogout](https://github.com/ArtsyMacaw/wlogout)
- Session Lock: [swaylock-effects](https://github.com/mortie/swaylock-effects)
- Sound: pipewire{,-audio,-jack,-pulse} wireplumber pamixer pavucontrol


## Installation
### Clone the repository recursively
Clone the repository with the command `git clone --recurse-submodules --remote-submodules https://github.com/YeetlePrime/hyprppuccin-dots`. You need to have git installed for that (`sudo pacman -S git`).  
For the next steps I assume that you are in the basedirectory of this repository (`cd hyprppuccin-dots`).

### Install all required dependencies
Lists for the dependencies can be found in this repository at `devscripts/pacman_dependencies.txt` and `devscripts/aur_dependencies.txt`. The pacman dependencies can also be installed by executing the dependency installation script `sudo ./devscripts/install_pacman_dependencies.sh`.  
The aur dependencies still have to be installed manually (or by using yay). A script for that is not provided yet. Also make sure to install `hyprland` either manually from [their homepage](https://hyprland.org/), or by using the respective pacman/yay package.

> [!WARNING]
> The hyprland packages are not maintaned by the creator and may be used at your own risk.

### Enable sddm to start on boot
If you want to use sddm as your Display/Login Manager, make sure that systemd starts it on boot. `systemctl enable sddm`

### Copy the config files to their respective directory
You can do that manually, or use the script `./devscripts/install.sh`.  

> [!INFO]
> The sddm (Display/Login Manager) config requires sudo privileges to get copied to the right directory.

> [!CAUTION]
> Your own configurations for the listed applications will get overwritten. Make sure to make backups of the mentioned files/directories. You don't wanna lose your stuff!


## Where to customize
### SDDM (Display/Login Manager)
The config file `sddm.conf` is located at `/etc/sddm.conf.d`.
It can be renamed and edited to your liking.  
The themes are located at `/usr/share/sddm/themes`. The default theme for hyprppuccin is a slightly modified version of [sddm-astronaut-theme](https://github.com/Keyitdev/sddm-astronaut-theme). This theme can be further customized in `/usr/share/sddm/themes/hyprppuccin/theme.conf`.

### Hyprland (Window Manager)
The files for hyprland configurations are located at `~/.config/hypr`. The main configuration file is `hyprland.conf`.

### swww (Background)
The background configuration is located inside the hyprland configuration. The background is set on hyprland startup inside `~/.config/hypr/hyprland.conf` (an `exec-once` statement in the launch category).

### neovim (editor)
My personal [neovim configuration](https://github.com/YeetlePrime/nvim-config) can be found at `~/.config/nvim`.

### zsh (Shell)
This is still a work in progress. Configuration can be found at `~/.zshrc`, `~/.zsh` and `starship.toml`.

### Kitty (Terminal)
This is still a work in progress. Configuration can be found at `~/.config/kitty`.

### Dolphin (File Manager)
This is very much a work in progress and barely customized.

### wlogout (Logout Menu)
User specific configuration can be found at `~/.config/wlogout`. Global configuration can be found at `/etc/wlogout`.

### swaylock-effects (Session Lock)
Config can be found at `~/.config/swaylock/config`.


## TODOs
- nvim fix rename for supporting lsps
- Add dependency installation script for AUR packages (and yay)
- Add menu/application launcher (wofi, rofi or alike)
- Customize wlogout theme
- Complete wlogout functionality
- Add keybindings for resizing windows
- Add keybinding documentation
- Add screenbrightness control
- waybar fix hover over workspace buttons
- fix dolphin theme contrast for highlighted areas
