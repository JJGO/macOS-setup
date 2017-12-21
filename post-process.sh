#!/usr/local/bin/zsh

set -e 			# Exit on error
set -o pipefail # Exit on pipe error
set -x 			# Enable verbosity

# Setup the dock
./dock.sh

# Install colemak keyboard
wget https://colemak.com/pub/mac/Colemak.keylayout
mv Colemak.keylayout ~/Library/Keyboard\ Layouts/

### SUBLIME TEXT CONFIG ###

# Link subl to sublime-text
# Already done by brew REMOVE
# ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

# Install Package Control
subl & # Needs to launch to generate
sleep 2
SUBL_ROOT="$HOME/Library/Application Support/Sublime Text 3"
curl 'https://packagecontrol.io/Package%20Control.sublime-package' -o "$SUBL_ROOT/Installed Packages/Package Control.sublime-package"

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
cat ~/.nano/nanorc >>! ~/.nanorc


### Wineconfig ###

winetricks corefonts
winetricks settings fontsmooth=rgb

### VLC ###

# Disable recently played videos
defaults write org.videolan.vlc NSRecentDocumentsLimit 0
# defaults delete org.videolan.vlc.LSSharedFileList RecentDocuments
defaults write org.videolan.vlc.LSSharedFileList RecentDocuments -dict-add MaxAmount 0

# Remove anything previous
# defaults delete org.videolan.vlc recentlyPlayedMedia
# defaults delete org.videolan.vlc recentlyPlayedMediaList


### TMUXINATOR ###
MUX_COMPLETION="/usr/local/lib/ruby/gems/2.4.0/gems/tmuxinator-0.10.1/completion"
mkdir -p ~/.bin/
cp "$MUX_COMPLETION/tmuxinator.bash" ~/.bin/
cp "$MUX_COMPLETION/tmuxinator.zsh"  ~/.bin/
cp "$MUX_COMPLETION/tmuxinator.fish" ~/.bin/
mkdir -p ~/.config/fish/completions/
cp ~/.bin/tmuxinator.fish ~/.config/fish/completions/

# Install Fuzzy clock
unzip software/FuzzyClock.zip -d /Applications

# Install fn-toggle app
cd /tmp
git clone https://github.com/jakubroztocil/macos-fn-toggle
cd macos-fn-toggle
make install

# Install git-fire

git clone https://github.com/qw3rtman/git-fire /tmp/git-fire
mkdir -p $HOME/bin
cp /tmp/git-fire/git-fire $HOME/bin

# Enable Trim on third party SSD
# sudo trimforce enable

cd -
