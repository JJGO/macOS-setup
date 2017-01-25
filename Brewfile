# Jose Javier Gonzalez Ortiz
# Brewfile

tap 'homebrew/science'
tap 'homebrew/fuse'

cask_args appdir: '/Applications'

### UNIX DEFAULTS
tap 'homebrew/dupes'
brew "coreutils"
brew "binutils"
brew "diffutils"
brew "ed", args: ['with-default-names']
brew "findutils"#, args: ['with-default-names']
brew "gawk"
brew "gnu-indent", args: ['with-default-names']
brew "gnu-sed", args: ['with-default-names']
brew "gnu-tar", args: ['with-default-names']
brew "gnu-which", args: ['with-default-names']
# brew "gnutls"
brew "gnupg"
brew "grep", args: ['with-default-names']
brew "gzip"
brew "less"
brew "lsof"
brew "make", args: ['with-default-names']
brew "nano"
brew "openssh"
brew "readline"
brew "rsync"
brew "screen"
brew "stow"                                 # Symlink creator, useful for dotfiles
brew "tree"									# Recursive display
brew "watch"								# Execute and monitor every X seconds
brew "wdiff", args: ['with-gettext']
brew "wget"

### SHELLS, GIT, PYTHON and RUBY
brew "git"
brew "git-extras"							# Extra commands for convenience
brew "git-crypt"							# Enables secretfiles
brew "git-lfs"								# Better handling of large files

brew "bash"									# Apple's is 3.2 current is 4
brew "bash-completion"						# Bash completion is lacking so this fixes it
brew "fish"									# Friendly interactive sheell. Good defaults but not POSIX
brew "zsh"									# Better shell, specially with zPrezto
brew "zsh-completions"						# General ZSH completions


### PROGRAMMING LANGUAGES
brew "xz"
brew "pyenv"								# Python version management
brew "pyenv-virtualenv"						# For managing virtual envs

brew "ruby"
brew "rbenv"
brew "ruby-build"

brew "perl"
brew "lua"

### EDITORS
# Widely used CLI editors
brew "vim", args: ['override-system-vi']
brew "macvim", args: ['custom-system-icons']
brew "emacs", args: ['HEAD', 'use-git-head', 'cocoa', 'srgb']

### CLI UTILITIES
brew "ack"									# Better grep
brew "colordiff"							# Colored diff
brew "dark-mode"							# Configure dark mode top bar
brew "dockutil"                             # Manages the dock icons
brew "duti"                                 # Set default document and URL handlers
brew "fdupes"								# CLI duplicate finder
brew "hardlink-osx"							# Hard link functionality on macOS
brew "htop"									# Display system usage
brew "mas"									# Install software from app store
brew "mutt", args: ['with-trash-patch']		# Email Client
brew "nmap"									# Network management package
brew "terminal-notifier" 					# Enable terminal notifications for scripts
brew "thefuck"								# To correct mistypes in commands
brew "the_silver_searcher"					# Search similar to ack
brew "doxygen"								# tmux dependency
brew "tmux", args: ['with-utf8proc']        # Terminal multiplexer and server
brew "trash"								# To use OS trash instead of rm forever
brew "youtube-dl"							# Download YouTube (and others) from CLI

### MISC
brew "archey"
brew "cowsay"
brew "fortune"
brew "screenfetch"

##### CASKS #####

tap "caskroom/cask"

cask "alfred"								# Improved Spotlight
cask "appcleaner"							# Removes plist along with the app
cask "bettertouchtool"						# Macros and gestures (PAIS -license)
cask "clipmenu"								# Clipboard manager
cask "dropbox" 								# Cloud storage with syncing
cask "flux"									# Changes temperature color based on time of day
cask "google-chrome"						# Google's web browser
cask "chrome-remote-desktop-host"           # Remote control using Google credentials
cask "firefox"                              # Alternative web browser
cask "google-drive"							# Google cloud storage
cask "github-desktop"						# Github desktop client (good for diffs)
cask "iterm2"								# Better than Terminal.app
cask "karabiner-elements"					# Tool to remap keys like caps-lock
cask "logitech-control-center"				# Drivers for keyboard and mouse
cask "mactex"								# LateX and TeX
cask "malwarebytes-anti-malware"			# Remove antimalware
cask "onyx"									# Tweak tool for OS
cask "osxfuse"
cask "scroll-reverser"						# Tool to invert mousewheel scroll
cask "skim"									# Better PDF tool with Sublime Text integration
cask "spotify"								# Music streaming
cask "steam"								# Gaming collection hub
cask "sublime-text"							# Multipurpose text editor
cask "telegram"								# Instant messaging with sync across devices
cask "the-unarchiver"						# To deflate and decompress files
cask "transmission"							# Torrent client
cask "veracrypt"							# Disk and disk image encryption
cask "vlc"									# Video Player
cask "vox"									# Lightweight audio player
cask "xbox360-controller-driver"			# Drivers for XBOX 360 controller

# PAID Casks
cask "bartender"							# Groups menu bar items (PAID)
cask "carbon-copy-cloner"					# Bulk copy and image creation (PAID)
cask "daisydisk"							# Handy disk space analyzer (PAID)
cask "tuxera-ntfs"							# NTFS write support (PAID)
cask "vmware-fusion"						# Full fledged user friendly VM (PAID)

# Quick Look plugins
cask "qlcolorcode"
cask "qlstephen"
cask "qlmarkdown"
cask "quicklook-json"
cask "qlprettypatch"
cask "quicklook-csv"
cask "betterzipql"
cask "qlimagesize"
cask "webpquicklook"
cask "suspicious-package"
cask "qlvideo"
cask "jupyter-notebook-ql"
cask "quicknfo"

# Fonts
tap 'caskroom/fonts'
cask "font-anonymous-pro"
cask "font-dejavu-sans"
cask "font-fira-code"
cask "font-fira-mono"
cask "font-hack"
cask "font-hasklig"
cask "font-inconsolata"
cask "font-iosevka"
cask "font-menlo-for-powerline"
cask "font-source-code-pro"
cask "font-source-sans-pro"
cask "font-terminus"

### Mac App Store Installs
mas "Amphetamine", id: 937984704					# Better up to date Caffeine tool to prevent sleep
mas "LastPass", id: 926036361						# Password management s
mas "Todoist", id: 585829637						# Todo list tool
mas "Tomato One", id: 907364780						# Pomodoro timers
mas "Xcode", id: 497799835							# Apple's developper tools


