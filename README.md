# iQtile: The Ultimate Customization of an OS

![Thumbnail](img/iQtile%20Project%20thumbnail.png)

# Table of contents

- [Partitions and formats](#partitions-and-formats)
- [Installation script](#installation-script)
- [Pacman packages to install](#pacman-packages-to-install)
- [Qtile configuration](#qtile-configuration)
- [LightDM configuration](#lightdm-configuration)
- [Picom configuration](#picom-configuration)
- [ZSH Shell configuration](#zsh-shell-configuration)
- [Alacritty configuration](#alacritty-configuration)
- [Rofi configuration](#rofi-configuration)
- [Ranger configuration](#ranger-configuration)
- [Neovim configuration](#neovim-configuration)
- [BlackArch - Pentesting utilities](#blackarch---Pentesting-utilities)

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

    curl -L archfi.sf.net/archfi > archfi && chmod +x archfi && ./archfi
    
After that, we would end up with with a fresh install of Arch Linux, ready to configure our Desktop Environment (DE), Window Manager (WM) and programs.
An important step is to not reboot the machine, and instead 'arch-chroot /mnt' and we change user to ours with 'su <USERNAME>'. At this point, we will install all config files from this session, so then we can reboot the system and we will se the final result. 

# Pacman packages to install

![Pacman](/img/iQtile%20Project%20pacman.png)

Let's going to install all needed packages and dependencies to be able to apply the customization, directly off of pacman's repositories. We have a file, named *packages.txt*, which is essentially a list of all package names that can be used as the input of *pacman* to install them at once.

    curl -L https://github.com/iWas-Coder/iQtile/raw/main/dotfiles/packages.txt > packages.txt
    sudo pacman -S - < packages.txt

# Qtile configuration

![Qtile](img/iQtile%20Project%20qtile.png)

We will be using Qtile as our WM. To import the settings I made, we can use the following script to automate the file management.
                                   
    curl -L https://github.com/iWas-Coder/iQtile/raw/main/scripts/0-qtile_config.sh > 0-qtile_config.sh
    chmod +x 0-qtile_config.sh
    ./0-qtile_config.sh

# LightDM configuration

![LightDM](img/iQtile%20Project%20lightdm_2.png)

We will be using LightDM as our DE or DM. When we installed the package list previously, we include some greeters for the login manager of LightDM. In addition to that, we need to set the session that we want to use in the correspondent config file. We will use the 'lightdm-webkit2-greeter' session, as it comes pre-configured and it works very good.
We must edit a couple of files, changing the following lines:

'/etc/lightdm/lightdm.conf':
    
    (...)
    
'/etc/lightdm/lightdm-webkit2-greeter.conf':
    
    (...)

'(...)':
    
    (...)
    
# Picom configuration

![Picom](img/iQtile%20Project%20picom.png)

We will be using an specific fork of Picom, which is *picom-tryone-git*. It will allow us to have a compositor with fading, transparency and blurring effects with the dual-kawase implementation. To install it, just do the following:

    yay -S picom-tryone-git
    
Then, we must make our custom configurations to match the desired result. To do it, execute the following commands:

    curl -L https://github.com/iWas-Coder/iQtile/blob/main/scripts/1-picom_config.sh > 1-picom_config.sh
    chmod +x 1-picom_config.sh
    ./1-picom_config.sh
    
After that, it should be ready to start using Picom after a session re-login.

# ZSH Shell configuration

![zsh](img/iQtile%20Project%20zsh.png)

As the shell, we will be using ZSH, or Z-Shell, with the powerlevel10k appearance and some syntax plugins. To do so, we can either install my settings with a script, or setup the powerlevel10k from scratch.
    
- powerlevel10k installation:
    
        git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k
        echo 'source ~/.powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
    
- script (My Config) installation:
    
        curl -L https://github.com/iWas-Coder/iQtile/blob/main/scripts/2-zsh_config.sh > 2-zsh_config.sh
        chmod +x 2-zsh_config.sh
        ./2-zsh_config.sh
    
To set the ZSH as the default shell for the system (for both the user and root), we must do the following:
    
    sudo chsh -s /bin/zsh <USERNAME>
    sudo chsh -s /bin/zsh root

# Alacritty configuration

![alacritty](img/iQtile%20Project%20alacritty.png)

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

# BlackArch - Pentesting utilities
    
![BlackArch](img/iQtile%20Project%20blackarch.jpg)
    
First, we need to setup and configure all sources and repositories to the BlackArch Linux distribution packages. To do so, we will use the following automate script:
    
    curl -L https://blackarch.org/strap.sh > strap.sh
    chmod +x strap.sh
    sudo ./strap.sh
    
- Wireless pentesting:
    
        pacman -S aircrack-ng zizzania wi-feye wepbuster jcrack
    
- Recognisement:
    
        pacman -S --needed recon-ng dnsenum dnswalk dnstracer dnsrecon shard whatweb onioff nmap maltego smtp-user-enum enum4linux
    
- Sniffing utilities:
    
        pacman -S --needed bettercap ettercap wireshark-gtk sslsnif netsniff-ng dsniff
    
- Reverse engineering:
    
        pacman -S --needed radare2 android-apktool jad javasnoop flasm python-capstone
    
- Forensic tools:
    
        pacman -S --needed casefile autopsy dff ddrescue dumpzilla magicrescue iphoneanalyzer naft peepdf recoverjpeg safecopy
    
- Hacking web:
    
        pacman -S --needed burpsuite vega zaproxy whatweb sqlmap wpscan joomlavs cloudget paros
    
- Exploiting:
    
        pacman -S --needed beef katana websploit
    
Now we should have a fully functional OS, with all the needed utilities to study and practice pentesting.
