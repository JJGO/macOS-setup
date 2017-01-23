#!/bin/bash

set -e          # Exit on error
set -o pipefail # Exit on pipe error
set -x          # Enable verbosity

# Clone dotfiles repo
git clone "https://github.com/JJGO/dotfiles.git" ~/.dotfiles

# Create symlink to Dropbox for backup
mkdir -p ~/Dropbox/dotfiles
ln -s ~/.dotfiles ~/Dropbox/dotfiles

# Use stow to symlink dotfiles
~/.dotfiles/setup_all.sh

# Set Colors iTerm
open -a "iTerm" ~/.dotfiles/iTerm/josejavier.itermcolors