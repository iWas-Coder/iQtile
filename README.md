# iQtile: The Ultimate Customization of an OS

![Thumbnail](img/iQtile%20Project%20thumbnail.png)

# Table of contents

(...)

# Partitions and formats

This is the general schema of partitions with each corresponent format in Linux:

- **boot** partition or */boot*: EFI System (FAT32)
- **swap** partition or */swap*: Linux swap
- **root** partition or */*: Linux filesystem (BTRFS or EXT4)
- **home** partition or */home*: Linux filesystem (same as **root**)

| **Partition** | **Format**    | **Size** |
| ------------- | ------------- | -------- |
| **boot**      | FAT32         | 512MiB   |
| **swap**      | Linux Swap    | 6/8GiB   |
| **root**      | BTRFS or EXT4 | 60/80GiB |
| **home**      | BTRFS or EXT4 | Rest     |

# Installation script

![Archfi](img/iQtile%20Project%20archfi%20script.png)

We will be using an automated script to install Arch Linux more easily:

    curl -L archfi.sf.net/archfi > archfi && ./archfi
    
After that, we would end up with with a fresh install of Arch Linux, ready to configure our Window Manager (WM) and programs.

# Pacman packages to install

![Pacman](/img/iQtile%20Project%20pacman.png)

Let's going to install all needed packages and dependencies to be able to apply the customization, directly off of pacman's repositories. We have a file, named *packages.txt*, which is essentially a list of all package names that can be used as the input of *pacman* to install them at once.

    sudo pacman -S - < packages.txt

# Qtile configuration

![Qtile](img/iQtile%20Project%20qtile.png)

(...)

# LightDM configuration

![LightDM](img/iQtile%20Project%20lightdm.png)

    sudo pacman -S lightdm-webkit2-greeter
    git clone https://github.com/paysonwallach/aqua-lightdm-webkit-theme /usr/share/lightdm-webkit2/themes/aqua
    
Edit the file */etc/lightdm/lightdm-webkit2-greeter.conf* as such:

    webkit-theme = aqua
    
After that, it should be all set to start using LightDM with this custom theme. In addition, we should like having an account icon. To do so, (...)

# Picom configuration

![Picom](img/iQtile%20Project%20picom.png)

We will be using an specific fork of Picom, which is *picom-tryone-git*. It will allow us to have a compositor with fading, transparency and blurring effects with the dual-kawase implementation. To install it, just do the following:

    yay -S picom-tryone-git
    
Then, we must make our custom configurations to match the desired result. To do it, execute the following commands:

    curl -L https://github.com/iWas-Coder/iQtile/blob/main/scripts/picom_config.sh > picom_config.sh
    chmod u+x picom_config.sh
    ./picom_config.sh
    
After that, it should be ready to start using Picom after a session re-login.

# zsh Shell configuration

![zsh](img/iQtile%20Project%20zsh.png)

(...)

# Rofi configuration

![Rofi](img/iQtile%20Project%20rofi.png)

(...)

# Ranger configuration

![Ranger](img/iQtile%20Project%20ranger.png)

(...)

# Neovim configuration

![Neovim](img/iQtile%20Project%20neovim.png)

(...)

