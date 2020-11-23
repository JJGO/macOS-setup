#!/usr/local/bin/zsh

set -e          # Exit on error
set -o pipefail # Exit on pipe error
set -x          # Enable verbosity

git remote set-url origin git@github.com:JJGO/macOS-setup.git
cd ~/.dotfiles
git remote set-url origin git@github.com:JJGO/dotfiles.git
cd -

### Wineconfig ###

# winetricks corefonts
# winetricks settings fontsmooth=rgb

### VLC ###

# README: Should be covered by mackup
# Disable recently played videos
# defaults write org.videolan.vlc NSRecentDocumentsLimit 0
# defaults write org.videolan.vlc.LSSharedFileList RecentDocuments -dict-add MaxAmount 0

# Remove anything previous
# defaults delete org.videolan.vlc recentlyPlayedMedia
# defaults delete org.videolan.vlc recentlyPlayedMediaList

### SelfControl
# README: Should be covered by mackup
# Intervals of one hour up to a week
# defaults write org.eyebeam.SelfControl MaxBlockLength -int 10080
# defaults write org.eyebeam.SelfControl BlockLengthInterval -int 60


## SSH
# pbcopy < ~/.ssh/id_ed25519.pub
# open https://github.com/settings/keys
# terminal-notifier -title SSH key -message  "Copied SSH key to clipboard, add it to GitHub"


cd -

# Yabai scripting addition
sudo yabai --install-sa
# Disable SIP
# https://github.com/koekeishiya/yabai/wiki/Disabling-System-Integrity-Protection

