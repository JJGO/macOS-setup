 #!/bin/bash

set -e          # Exit on error
set -o pipefail # Exit on pipe error
set -x          # Enable verbosity

# Clone dotfiles repo
git clone "https://github.com/JJGO/dotfiles.git" ~/.dotfiles

# Create symlink to Dropbox for backup
# if [ ! -f ~/Dropbox/dotfiles ]; th
#  ln -s ~/.dotfiles ~/Dropbox/dotfiles
# fi

# Use stow to symlink dotfiles
cd ~/.dotfiles
./setup_all.sh
cd -