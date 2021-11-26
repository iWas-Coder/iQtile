#!/bin/bash

echo -e "   ____  __  _ __                         _____      "
echo -e "  / __ \/ /_(_) /__     _________  ____  / __(_)___ _"
echo -e " / / / / __/ / / _ \   / ___/ __ \/ __ \/ /_/ / __ `/"
echo -e "/ /_/ / /_/ / /  __/  / /__/ /_/ / / / / __/ / /_/ / "
echo -e "\___\_\__/_/_/\___/   \___/\____/_/ /_/_/ /_/\__, /  "
echo -e "                                            /____/   "

curl -O https://github.com/iWas-Coder/iQtile/raw/main/dotfiles/qtile_config.zip
unzip qtile_config.zip && rm qtile_config.zip
mv qtile_config/qtile/ ~/.config/

echo "DONE! Qtile is now configured."
