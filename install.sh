#!/bin/bash

# This script must be run under root user.
# Actually, it is meant to be used after the base Arch Linux installation, under a chroot session.

# Makes the effect of three dots appearing one after the other.
function progress_dots {
	echo -e "\n$1"
	sleep 0.75
	echo -e "."
	sleep 0.75
	echo -e "."
	sleep 0.75
	echo -e ".\n"
}

function ask_choice {
	while true; do
		read -p "$1 [y/N]" choice
		case "$choice" in
			y|Y )
				progress_dots "Installing"
				$2
				break
				;;
			n|N )
				progress_dots "OK, Continuing"
				break
				;;
			* )
				echo "Invalid option" >&2
				;;
		esac
	done
}

#function asus_util {
	# (...)
#}

#function nvidia_drivers {
	# (...)
#}

# Print script logo as an introduction :)
cat .utils/logo.txt

progress_dots

# Ask for username and password
read -p "Username: " username
read -s -p "Password: " password

progress_dots

# Installation of all the needed packages available with pacman.
progress_dots "Installing all needed packages available with pacman"
pacman -S - < .packages/pacman_packages.txt
cd /

progress_dots

# Installation of yay AUR Helper.
progress_dots "Installing yay AUR Helper"
cd /tmp
su "$username" - <<< "$password"
git clone https://aur.archlinux.org/yay-git.git
chown -R "$username":"$username" ./yay-git
cd yay-git
makepkg -si
sudo su - <<< "$password"
cd ..; rm -rf yay-git
cd /

progress_dots

# Asking the user whether to install the ASUS Notebooks utilities.
ask_choice "This system is an ASUS Notebook (Zephyrus)?" asus_util

progress_dots

# Asking the user whether to install the NVIDIA Drivers.
ask_choice "You have a NVIDIA GPU?" nvidia_drivers

progress_dots

# Copying over all /home/<username>/ dotfiles.
