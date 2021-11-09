# iQtile: The Ultimate Customization of an OS

![Thumbnail](__assets__/iQtile%20Project%20thumbnail.png)

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

![Archfi](https://raw.githubusercontent.com/iWas-Coder/iQtile/main/__assets__/iQtile%20Project%20archfi%20script.png)

We will be using an automated script to install Arch Linux more easily:

    curl -L archfi.sf.net/archfi > archfi && ./archfi
    
After that, we would end up with with a fresh install of Arch Linux, ready to configure our Window Manager (WM) and programs.

# Pacman packages to install

(...)
