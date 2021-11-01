# yay AUR Helper installation

First, make sure that the 'git' package is installed. Check the [package list](https://raw.githubusercontent.com/iWas-Coder/wasymatieh/main/ArchLinux/installed_packages.txt).


Next, follow the following steps to install yay:

    sudo git clone https://aur.archlinux.org/yay-git.git
    sudo chown -R <username>:<username> ./yay-git
    cd yay-git
    makepkg -si
    cd ..; rm -r yay-git
  
All packages in the [package list](https://raw.githubusercontent.com/iWas-Coder/wasymatieh/main/ArchLinux/installed_packages.txt) that must be installed with yay have a '[YAY]' tag next to them.
