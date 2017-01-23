#!/bin/bash

set -e 			# Exit on error
set -o pipefail # Exit on pipe error
set -x 			# Enable verbosity

# Chage shell script files to run
chmod +x *.sh

# Change MacOS Settings
./settings.sh

# Install xcode before homebrew
xcode-select --install

# Put local in bash_profile
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile

# Setup Brew bundle for running Brewfiles
brew tap Homebrew/bundle && brew bundle

# Since XCode got installed, need to agree to license
sudo xcodebuild -license

# Install python environments
./python_setup.sh

# Install Ruby gems
gem install bundler
bundle install

# Configure ZSH
./zsh_setup.sh

# Load dotfiles
./dotfiles_setup.sh

# Run post-processing script
./post-process.sh

# Extra dependencies and applications [Optional]
while true; do
    read -p "Do you want to install the extra utils/apps?[y/n]" yn
    case $yn in
        [Yy]* ) brew bundle --file=Brewfile_extra; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done