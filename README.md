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

(...)

# Qtile configuration

![Qtile](img/iQtile%20Project%20qtile.png)

(...)

# LightDM configuration

![LightDM](img/iQtile%20Project%20lightdm.png)

(...)

# Picom configuration

![Picom](img/iQtile%20Project%20picom.png)

(...)

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

