#!/bin/bash

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Not running as root. Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi

curl -L https://github.com/iWas-Coder/iQtile/blob/main/dotfiles/zsh_user.zip > zsh_user.zip
curl -L https://github.com/iWas-Coder/iQtile/blob/main/dotfiles/zsh_root.zip > zsh_root.zip
unzip zsh_user.zip
rm zsh_user.zip
mv zsh_user/.zsh/ zsh_user/powerlevel10k/ zsh_user/.p10k.zsh zsh_user/.zshrc /home/$USER/ && rmdir zsh_user/
unzip zsh_root.zip
rm zsh_root.zip
sudo mv zsh_root/.zsh/ zsh_root/powerlevel10k/ zsh_root/.p10k.zsh zsh_root/.zshrc /root/ && rmdir zsh_root/
ln -s /root/.zshrc /home/$USER/.zshrc

echo "DONE! Exiting..."
