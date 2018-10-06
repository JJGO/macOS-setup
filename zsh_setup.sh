#!/bin/bash

set -e 			# Exit on error
set -o pipefail # Exit on pipe error
set -x 			# Enable verbosity

# Add shell to /etc/shells
command -v zsh | sudo tee -a /etc/shells

# Changing Default Shell
chsh -s $(command -v zsh)

# Install powerline fonts
git clone https://github.com/powerline/fonts.git ~/Git/powerline-fonts
~/Git/powerline-fonts/./install.sh
rm -rf ~/Git/powerline-fonts

# Configure prezto to have zsh niceties
./prezto_setup.sh