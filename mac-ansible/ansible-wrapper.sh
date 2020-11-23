#!/usr/bin/env bash
set -m # Enables job control
set -x


if [[ -f /tmp/mac-ansible.log ]]; then
	rm /tmp/mac-ansible.log
fi

# Hack to get commands output while ansible executes, great for `brew bundle`
# To use just redirect output with append to the log file `>> /tmp/mac-ansible.log`
touch /tmp/mac-ansible.log && tail -f /tmp/mac-ansible.log &

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

caffeinate &  # Prevent mac from sleeping
caffeinate -d & # Prevent display from sleeping

# unbuffer preserves color codes
export ANSIBLE_NOCOWS=1
ansible-playbook main.yml --ask-become-pass

kill %1
killall caffeinate
rm /tmp/mac-ansible.log
