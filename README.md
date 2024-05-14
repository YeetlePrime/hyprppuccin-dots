<h1 align="center">
    <img src="https://github.com/YeetlePrime/hyprppuccin-dots/blob/main/assets/catppuccin.png" width="100" alt="Catppuccin-Logo"/><br/>
    Hyprppuccin
</h1>

These are my personal dotfiles for my personal daily driver linux machine with hyprppuccin mocha theme.
The config is inspired by the catppuccin-mocha hyprland theme from [hyprdots](https://github.com/prasanthrangan/hyprdots). The used sddm config is based on [sddm-astronaut-theme](https://github.com/Keyitdev/sddm-astronaut-theme).


## Dependencies
<table>
    <thead>
        <th>Type</th>
        <th>Used Software</th>
        <th>Repo Config</th>
        <th>System Config</th>
    </thead>
    <tbody>
        <tr>
            <td>Display System</td> 
            <td>[wayland](https://wayland.freedesktop.org/)</td> 
            <td></td> 
            <td></td> 
        </tr>
        <tr>
            <td>Display/Login Manager</td> 
            <td>[sddm](https://github.com/sddm/sddm)</td> 
            <td>
                General: <code>config/sddm/sddm.conf</code>
                </br>
                Themes: <code>config/sddm/themes</code>
            </td> 
            <td>
                General: <code>/etc/sddm.conf.d/sddm.conf</code>
                </br>
                Themes: <code>config/sddm/themes</code>
            </td> 
        </tr>
        <tr>
            <td>Window Manager</td> 
            <td>[hyprland](https://hyprland.org/)</td> 
            <td><code>config/.config/hypr</code></td> 
            <td><code>~/.config/hypr</code></td> 
        </tr>
        <tr>
            <td>Wallpaper Daemon</td> 
            <td>[swww](https://hyprland.org/)</td> 
            <td></td> 
            <td></td> 
        </tr>
        <tr>
            <td>Statusbar</td> 
            <td>[waybar](https://github.com/Alexays/Waybar)</td> 
            <td><code>config/.config/waybar</code></td> 
            <td><code>~/.config/waybar</code></td> 
        </tr>
        <tr>
            <td>Editor</td> 
            <td>[neovim](https://github.com/neovim/neovim)</td> 
            <td><code>config/.config/nvim</code></td> 
            <td><code>~/.config/nvim</code></td> 
        </tr>
        <tr>
            <td>Shell</td> 
            <td>[zsh](https://wiki.archlinux.org/title/zsh) with [starship](https://starship.rs/)</td> 
            <td><code>config/.zshrc,</code> <code>config/.zsh,</code> <code>config/.config/starship.toml</code></td>
            <td><code>~/.zshrc,</code> <code>~/.zsh,</code> <code>~/.config/starship.toml</code></td> 
        </tr>
        <tr>
            <td>Terminal</td> 
            <td>[kitty](https://github.com/kovidgoyal/kitty)</td> 
            <td><code>config/.config/kitty</code></td> 
            <td><code>~/.config/kitty</code></td> 
        </tr>
        <tr>
            <td>File Manager</td> 
            <td>[dolphin](https://apps.kde.org/de/dolphin/)</td> 
            <td><code>config/.config/dolphinrc</code>, <code>config/.config/qt6ct</code></td> 
            <td><code>~/.config/dolphinrc</code>, <code>~/.config/qt6ct</code></td> 
        </tr>
        <tr>
            <td>App Launcher</td> 
            <td>[rofi (wayland fork)](https://github.com/lbonn/rofi)</td> 
            <td><code>config/.config/rofi</code></td> 
            <td><code>~/.config/rofi</code></td> 
        </tr>
        <tr>
            <td>LogoutMenu</td> 
            <td>[wlogout](https://github.com/ArtsyMacaw/wlogout)</td> 
            <td><code>config/.config/wlogout</code></td> 
            <td><code>~/.config/wlogout</code></td> 
        </tr>
        <tr>
            <td>Session Lock</td> 
            <td>[swaylock-effects](https://github.com/mortie/swaylock-effects)</td> 
            <td><code>config/.config/swaylock</code></td> 
            <td><code>~/.config/swaylock</code></td> 
        </tr>
        <tr>
            <td>Sound</td> 
            <td>pipewire{,-audio,-jack,-pulse} wireplumber pamixer pavucontrol-qtd></td> 
            <td></td> 
            <td></td> 
        </tr>
    </tbody>

</table>


## Installation
### 1. Clone the repository recursively
Clone the repository with the command `git clone --recurse-submodules --remote-submodules https://github.com/YeetlePrime/hyprppuccin-dots`. You need to have git installed for that (`sudo pacman -S git`).  
For the next steps I assume that you are in the basedirectory of this repository (`cd hyprppuccin-dots`).

### 2. Install all required dependencies and the configuration
#### Automatic installation
The automatic installation process will download all dependencies that can be installed with pacman, then [yay](https://github.com/Jguer/yay) and all aur dependencies get installed.  
Lastly all the configuration files from this repository are copied to their respective target directory.
To install the whole configuration execute the full install script **without** root privileges `./devscripts/full_install.sh`.

> [!WARNING]
> You have to manually install hyprland with [this guide](https://wiki.hyprland.org/Getting-Started/Installation/).
> The hyprland packages are not maintaned by the creator and yet not installed by the installation script.
> You may use `sudo pacman -S hyprland` or `yay -S hyprland-git` to install hyprland from the community-maintained packages.

> [!CAUTION]
> Your own configurations for the listed applications will get overwritten. Make sure to make backups of the mentioned files/directories. You don't wanna lose your stuff!

#### Manual installation
1. Install all the dependencies listed in `devscripts/pacman_dependencies.txt` and `devscripts/aur_dependencies.txt`.
1. Install hyprland as described [here](https://wiki.hyprland.org/Getting-Started/Installation/).
1. Copy all the configuration files to their respective target directory (for example by using the script config script `sudo ./devscripts/apply_config.sh`).

### 3, Enable sddm to start on boot
If you want to use sddm as your Display/Login Manager, make sure that systemd starts it on boot. `systemctl enable sddm`


## Configuration
If you want to further rice the config yourself, you can change the config files locally in your cloned directory and then execute the installation script `devscript/install.sh` (or with sudo priviliges, if you changed something for sddm).  
Alternatively you can change the configs directly on your system. 
You can see where to find the config files in the [table above](#dependencies).


## Screenshots
![](https://github.com/YeetlePrime/hyprppuccin-dots/blob/main/assets/empty.png)
![](https://github.com/YeetlePrime/hyprppuccin-dots/blob/main/assets/single_window.png)
![](https://github.com/YeetlePrime/hyprppuccin-dots/blob/main/assets/multiple_windows.png)


## TODOs
- rofi 
    - customize theme
- wlogout
    - customize theme
    - complete functionality (hibernate, logout, sleep)
- hyprland
    - add keybindings for resizing windows
- readme
    - add keybinding documentation
- waybar
    - add screenbrightness control
    - fix hover over workspace buttons
- dolphin/qt6ct/qt5ct
    - fix contrast for highlighted areas
