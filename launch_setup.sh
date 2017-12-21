#!/bin/bash
#
# Setup launch agents

sudo cp launch/syncthing.plist ~/Library/LaunchAgents/syncthing.plist
launchctl load ~/Library/LaunchAgents/syncthing.plist