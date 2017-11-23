# Clear the cluttered dock
dockutil --remove all

# Add the default apps
dockutil --add "/Applications/Google Chrome.app/"
dockutil --add "/Applications/Spotify.app"
dockutil --add "/Applications/Mail.app"
dockutil --add "/Applications/Todoist.app"
dockutil --add "/Applications/Microsoft OneNote.app"
dockutil --add "/Applications/Mendeley Desktop.app"
dockutil --add "/Applications/Sublime Text.app"
dockutil --add "/Applications/iTerm.app"
dockutil --add "/Applications/Telegram.app"
dockutil --add "/Applications/Slack.app"
dockutil --add '~/Downloads' --view fan --display folder --section others