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


### Mouse
* Tracking speed 3rd notch from the right

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
* Add Fuzzy Clock to Login Items

Third party apps
================

## 360Controller
[Controller](https://github.com/360Controller/360Controller/releases)

## Google Chrome
* Login with user
* Login into extensions
* Load Stylish JSON

## Firefox
* Login with Firefox Sycnc
* Load Stylish JSON

## Scroll reverser
* Check Start at login
* Uncheck Reverse Trackpad
* Uncheck Reverse Tablet

## MATLAB
* Install latest release form Mathworks using edu account

## iTerm
Set iTerm to use dot file config and save to it item
Change icon with ic ns in dotfiles
Save .scpt as .app and it in menubar

## BetterTouchTool
* Import Preferences from dotfiles
* Add license

## Dropbox
* Login
* Disable all notifications
 
## Google Drive
* Login
* Set up wallpapers

## Better Touch Tool
Enable Accesibility
import license

## Flux
* Configure

## MIT Certs
MIT https://ist.mit.edu/certificates
CSAIL http://tig.csail.mit.edu/wiki/TIG/CertificatesIntro

## Vim
<!-- Install bundle -->
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

<!-- Install colorscheme -->
mkdir -p ~/.vim/colors/
curl "https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim" -o ~/.vim/colors/molokai.vim

## Bitwarden
* Chrome Login
* Lock->1 Minute

## Authy
* Login
* Add Master Password

## Telegram
* Login with Phone number and activation code
* Dark Mode On

## Alfred
* Update workflows https://github.com/derimagia/awesome-alfred-workflows
* Enable Clipboard
* Use settings from Dropbox
* Setup spotifu miniplayer `http://alfred-spotify-mini-player.com/`
* Enable Accesibility text expansion

## Spotify
* Login

## Todoist
* Login

## Calibre
* Use Macintosh HD library
* Setup email from Tolsimir5@gmail.com (hostname: imap.gmail.com, port:587, user:<foo>@gmail.com, encryption: TLS)
* Import Biblioteca Tecnica

## License
* Alfred
* Bartender
* Bear
* DaisyDisk
* Dash
* Fantastical
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

## Mail App
* Configure jjgo.mit@gmail.com to show as jjgo@mit.edu

## Amethyst
* Launch at login
* Enable accesibility settings

## Sublime Text
* Clone Settings from Repo
* Check linter is working
* Check latextools is working + configure skim

## Transmit
* Import servers

## Tunnelblick
* Import VPN connections

## Bartender
* Launch at login
* Dont Check for Updates automatically
* License
* Choose apps to hide

## Matlab
* Use MIT account

## PyCharm
* Activate EDU license

## Hazel
* Import config

## Karabiner Elements
* Caps lock to Backspace
* Menu to right_command

## Carbon Copy Cloner
* Setup Backup
* Setup Email

## Steam
* Install games

## Automation
* Instalar Jackett
* Copiar jackett a /Applications
* Configurar Sonarr trackers
* Configurar Radarr trackers
* Configurar Transmission

## Adguard
* Import blacklist

## Selfcontrol
* Import blacklist

## Reference
https://github.com/herrbischoff/awesome-osx-command-line
