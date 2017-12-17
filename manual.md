# Pre-Install Instructions

1. Make sure that 
	- format: APFS
	- user: josejavier
	- FileVault is On

2. Clone Git Repo http://github.com/jjgo/macos-setup
3. Disable sleeping display before running script
4. Enable System extensions during installation (one time thing)
5. Enable sleeping display (10 min) after big installation

Manual install
==============

CTRL + SHIFT + . -- Toogle hidden files in open/save dialogs

## Google Chrome
* Login with user


## System Preferences

### General
* Use dark menu bar and dock

### Wallpaper and Screensaver
* Use wallpapers from Google Drive
* Add wallpapers from [awesome collection](https://github.com/aharris88/awesome-macos-screensavers)
* Setup hot corners (press alt so they activate only when alt is pressed)

### Mission Control 
* Uncheck: Automatically rearrange Spaces based on most recent use
* Hot Corners
	- Up left: Mission Control
	- Down left + alt: Sleep display

### Language and Region
* Language English
* Region: Spain (should make evrything ISO)
* Advanced General
	- Grouping: Space
	- Decimal: .
	- Currency: US Dollar
* Advanced Dates
	- ISO 8601 for short and medium

### Security and Privacy
* Require password inmediately

### Trackpad
* Swipe between pages with 3 fingers
* Swipe between full-screen apps with 4 fingers
* Uncheck notification center
* Mission control with 4 fingers
* App expose with 4 fingers
* Uncheck launchpad

### Notifications
* Enable Do Not disturb mode from 22-7 and when display is sleeping

### Energy saver
* Check turn display off after 10 min

### Keyboard
* Show keyboard visor
* Add Spanish ISO, Colemak
* Disable speech dictation

### Printers and Scanners
* Add Phaser 6300DN

### Sound
* Sosumi as error sound (default: funk)
* Show sound in menu bar

### Internet Accounts
* Google: Mail, Contacts, Calendat
* Umich: Mail
* MIT Google: mail
* Contact: mail

### Touch ID
* Add more fingers

### Users and Groups
* Change icon to rebel space icon (Google Drive)


Third party apps
================

## Scroll reverser
* Check Start at login
* Uncheck Reverse Trackpad
* Uncheck Reverse Tablet

## Fix permissions of Macintosh HD
 sudo chown -R $(whoami) /Volumes/Macintosh\ HD

## iTerm
Set iTerm to use dot file config and save to it item
Change icon with icns in dotfiles
Save .scpt as .app and it in menubar

## Authy
Login

## Dropbox
Login

## Google Drive
Login

## Better Touch Tool
Enable Accesibility
import license
Load configuration file form ~/.dotfiles

## Vim
<!-- Install bundle -->
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

<!-- Install colorscheme -->
mkdir -p ~/.vim/colors/
curl "https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim" -o ~/.vim/colors/molokai.vim


## Telegram
Login with Phone number and activation code

## Alfred
* Import workflows
* Use settings from Dropbox
* Setup spotifu miniplayer `http://alfred-spotify-mini-player.com/`

## Spotify
Login
TODO Fix non spotify songs


## Calibre
* Use Macintosh HD library
* Setup email from Tolsimir5@gmail.com
* Import Biblioteca Tecnica

## License
* Alfred
* Bartender
* DaisyDisk
* Dash
* Hazel - import rules
* Kaleidoscope
* Microsoft Office
* Paragon NTFS
* Pixelmator
* Popclip
* Transmit
* Ulysses
* VMWareFusion
* WifiExplorer

## Popclip
* Install extensions

## Matlab
* Use MIT account

## Karabiner Elements
Caps lock to Backspace

## Recover Config
Once Dropbox has synced
`mackup restore`

## Automation
* Instalar Jackett
* Copiar jackett a /Applications
* Configurar Sonarr trackers
* Configurar Radarr trackers
* Configurar Transmission

## Reference
https://github.com/herrbischoff/awesome-osx-command-line
