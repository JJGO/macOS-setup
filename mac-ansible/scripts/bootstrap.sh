#!/bin/bash

set -x

cd scripts

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Look for developer tools (needed for Homebrew)
xcode-select -p
if [ $? -eq 0 ]; then
    echo "Found XCode Tools"
else
    echo "Installing XCode Tools"

    xcode-select --install
fi

# Flags
set -e # Global exit on error flag
set -x # Higher verbosity for easier debug
set -o pipefail # Exit on pipe error

# Chage shell script files to run
chmod +x *.sh

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update

# Allow third party software
sudo spctl --master-disable

# Install ansible
brew install ansible
# Install expect to get unbuffer
brew install unbuffer

# Since XCode got installed, need to agree to license
# sudo xcodebuild -license
