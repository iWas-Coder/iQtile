#!/bin/bash

curl -L https://github.com/iWas-Coder/iQtile/blob/main/dotfiles/picom.zip > picom.zip
unzip picom.zip
rm picom.zip
mv picom/ ~/.config/
