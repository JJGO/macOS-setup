
# Update all brew related files
brew update && brew upgrade && brew cleanup && brew cask cleanup

# Updated all outdated packages installed through the mac app store
mas upgrade

# Update conda python environment
conda update --all

