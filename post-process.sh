#!/usr/local/bin/zsh

set -e 			# Exit on error
set -o pipefail # Exit on pipe error
set -x 			# Enable verbosity

# Clear the cluttered dock
dockutil --remove all
# TODO put my apps here with dockutil

# Install colemak keyboard
wget https://colemak.com/pub/mac/Colemak.keylayout
mv Colemak.keylayout ~/Library/Keyboard\ Layouts/

### SUBLIME TEXT CONFIG ###

# Link subl to sublime-text
# Already done by brew REMOVE
# ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

# Install Package Control
SUBL_ROOT="$HOME/Library/Application Support/Sublime Text 3"
curl 'https://packagecontrol.io/Package%20Control.sublime-package' -o "$SUBL_ROOT/Installed Packages/Package Control.sublime-package"

# Clone my sublime settings into the User folder
# TODO Fix sublime packages
# rm -rf "$SUBL_ROOT/Packages/User"
# git clone "https://github.com/JJGO/sublime-settings" "$SUBL_ROOT/Packages/User"

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
defaults delete org.videolan.vlc.LSSharedFileList RecentDocuments
defaults write org.videolan.vlc.LSSharedFileList RecentDocuments -dict-add MaxAmount 0

# Remove anything previous
defaults delete org.videolan.vlc recentlyPlayedMedia
defaults delete org.videolan.vlc recentlyPlayedMediaList


### TMUXINATOR ###
MUX_COMPLETION="/usr/local/lib/ruby/gems/2.4.0/gems/tmuxinator-0.9.0/completion"
mkdir -p ~/.bin/
cp "$MUX_COMPLETION/tmuxinator.bash" ~/.bin/
cp "$MUX_COMPLETION/tmuxinator.zsh"  ~/.bin/
cp "$MUX_COMPLETION/tmuxinator.fish" ~/.bin/
mkdir -p ~/.config/fish/completions/
cp ~/.bin/tmuxinator.fish ~/.config/fish/completions/

### INSTALL MPV  with 60 fps###
# https://www.reddit.com/r/osx/comments/4ljbdq/mpv_tutorial_and_60_fps_playback_on_os_x/
brew install --without-harfbuzz libass
brew install --with-rtmpdump --with-openssl --with-libass --with-libbs2b --with-rubberband ffmpeg
brew install --with-vapoursynth --with-libarchive --with-bundle mpv
brew install mvtools
brew install ffms2
brew install subliminal
brew linkapps mpv

# Enable Trim on third party SSD
sudo trimforce enable

# Install fn-toggle app
cd /tmp
git clone https://github.com/jakubroztocil/macos-fn-toggle
cd macos-fn-toggle
make install

# Install git-fire

git clone https://github.com/qw3rtman/git-fire /tmp/git-fire
mkdir -p $HOME/bin
cp /tmp/git-fire/git-fire $HOME/bin
