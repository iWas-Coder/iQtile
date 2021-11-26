#!/bin/bash

echo -e " ██████╗ ████████╗██╗██╗     ███████╗     ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗ "
echo -e "██╔═══██╗╚══██╔══╝██║██║     ██╔════╝    ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝ "
echo -e "██║   ██║   ██║   ██║██║     █████╗      ██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗"
echo -e "██║▄▄ ██║   ██║   ██║██║     ██╔══╝      ██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║"
echo -e "╚██████╔╝   ██║   ██║███████╗███████╗    ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝"
echo -e " ╚══▀▀═╝    ╚═╝   ╚═╝╚══════╝╚══════╝     ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝ "

curl -L https://github.com/iWas-Coder/iQtile/raw/main/dotfiles/qtile_config.zip > qtile_config.zip
unzip qtile_config.zip && rm qtile_config.zip
mv qtile_config/qtile/ ~/.config/

echo "DONE! Qtile is now configured."