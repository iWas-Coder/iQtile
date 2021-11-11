#!/bin/bash

curl -L https://github.com/iWas-Coder/iQtile/blob/main/dotfiles/zsh_user.zip > zsh_user.zip
curl -L https://github.com/iWas-Coder/iQtile/blob/main/dotfiles/zsh_root.zip > zsh_root.zip
unzip zsh_user.zip
rm zsh_user.zip
mv zsh_user/.zsh/ zsh_user/powerlevel10k/ zsh_user/.p10k.zsh zsh_user/.zshrc ~/ && rmdir zsh_user/
unzip zsh_root.zip
rm zsh_root.zip
sudo mv zsh_root/.zsh/ zsh_root/powerlevel10k/ zsh_root/.p10k.zsh zsh_root/.zshrc /root/ && rmdir zsh_root/
ln -s 
