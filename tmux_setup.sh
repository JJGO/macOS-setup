#! /usr/local/bin/zsh

set -e 			# Exit on error
set -o pipefail # Exit on pipe error
set -x 			# Enable verbosity

# Configuring tmux to use zsh and powerline
pip install powerline-status
ln -s ~/.local/lib/python3.5/site-packages/powerline ~/bin
ln -s ~/.pyenv/versions/3.6.0/lib/python3.6/site-packages/powerline ~/bin

cat <<EOT >> ~/.tmux
set-option -g default-shell /usr/local/bin/zsh
set -g default-terminal "xterm-256color"
run-shell "powerline-daemon -q"
source "~/bin/powerline/bindings/tmux/powerline.conf"
set -g terminal-overrides 'xterm*:smcup@:rmcup@'
EOT