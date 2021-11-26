#!/bin/bash

echo -e "██████╗ ██╗ ██████╗ ██████╗ ███╗   ███╗     ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗ "
echo -e "██╔══██╗██║██╔════╝██╔═══██╗████╗ ████║    ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝ "
echo -e "██████╔╝██║██║     ██║   ██║██╔████╔██║    ██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗"
echo -e "██╔═══╝ ██║██║     ██║   ██║██║╚██╔╝██║    ██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║"
echo -e "██║     ██║╚██████╗╚██████╔╝██║ ╚═╝ ██║    ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝"
echo -e "╚═╝     ╚═╝ ╚═════╝ ╚═════╝ ╚═╝     ╚═╝     ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝ "
                                                                                          
curl -L https://github.com/iWas-Coder/iQtile/raw/main/dotfiles/picom.zip > picom.zip
unzip picom.zip && rm picom.zip
mv picom/ ~/.config/

echo "DONE! Picom is now configured."
