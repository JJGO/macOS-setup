#!/usr/local/bin/zsh

set -e 			# Exit on error
set -o pipefail # Exit on pipe error
set -x 			# Enable verbosity

# Enable dark mode
dark-mode --mode Dark

# Install colemak keyboard
wget https://colemak.com/pub/mac/Colemak.keylayout
mv Colemak.keylayout ~/Library/Keyboard\ Layouts/

### SUBLIME TEXT CONFIG ###

# Link subl to sublime-text
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

# Install Package Control
SUBL_ROOT="$HOME/Library/Application Support/Sublime Text 3/"
wget "https://packagecontrol.io/Package%20Control.sublime-package" "$SUBL_ROOT/Installed Packages/Package Control.sublime-package"

# Clone my sublime settings into the User folder
rm -rf "$SUBL_ROOT/Packages/User"
git clone "https://github.com/JJGO/sublime-settings" "$SUBL_ROOT/Packages/User"

### GIT CONFIG ###

# Need to generate ssh key
ssh-keygen -t rsa -b 4096
ssh-add ~/.ssh/id_rsa
pbcopy < ~/.ssh/id_rsa.pub
open https://github.com/settings/keys
echo -e "\e[1mCopied SSH key to clipboard, add it to GitHub\e[0m"
# Installing nano syntax coloring
mkdir ~/.nano
git clone https://github.com/scopatz/nanorc.git ~/.nano
cat ~/.nano/nanorc >> ~/.nanorc


### TMUXINATOR ###

git clone "https://github.com/tmuxinator/tmuxinator/tree/master/completion" /tmp/tmuxinator
mkdir -p ~/.bin/
cp /tmp/tmuxinator/completion/tmuxinator.bash ~/.bin/
cp /tmp/tmuxinator/completion/tmuxinator.zsh  ~/.bin/
