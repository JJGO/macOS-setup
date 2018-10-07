# Build
sudo apt-get install -y build-essential

# Mount
sudo apt-get install -y cifs-utils

# Git
sudo apt-get install -y git
sudo apt-get install -y git-extras  # Extra git commands like git-ignore
sudo apt-get install -y git-flow    # Git-Flow utils

# Monitor
sudo apt-get install -y htop        # Process monitor
sudo apt-get install -y iotop       # I/O Monitor
sudo apt-get install -y stress      # Test performance CPU, MEM, I/O...

# CLI tools
sudo apt-get install -y atool               # For zip, tar, 7z etc
sudo apt-get install -y colordiff           # Diff with colors
sudo apt-get install -y fdupes              # Find duplicates
sudo apt-get install -y ffmpeg              # Video encoder
sudo apt-get install -y highlight           # syntax color for ranger
sudo apt-get install -y less
sudo apt-get install -y lnav                # Log navigator
sudo apt-get install -y mediainfo           # Media Analyzer
# MOSH (mosh requires OpenSSH instead of Dropbear)
sudo apt-get install -y mosh
sudo iptables -I INPUT 1 -p udp --dport 60000:61000 -j ACCEPT
sudo apt-get install -y ncdu                # Free space navigator
sudo apt-get install -y parallel            # Execute stdin pipes in parallel
sudo apt-get install -y tmux
sudo apt-get install -y tree                # Directory structure
sudo apt-get install -y ranger              # CLI file explorer
sudo apt-get install -y silversearcher-ag   # Better ack
sudo apt-get install -y sshfs               # Mounting filesystems through ssh
sudo apt-get install -y vim
sudo apt-get install -y zsh



# Add shell to /etc/shells
command -v zsh | sudo tee -a /etc/shells

# Changing Default Shell
chsh -s $(command -v zsh)

# Install powerline fonts
git clone https://github.com/powerline/fonts.git ~/Git/powerline-fonts
~/Git/powerline-fonts/./install.sh
rm -rf ~/Git/powerline-fonts

# Install prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

zsh <<EOT
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
EOT

# Modify .zshrc

cat <<EOT >> ~/.zshrc

# PATH
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:\$PATH
export PATH=/usr/local/bin:\$PATH

# Cargo
source \$HOME/.cargo/env

# DietPi
/DietPi/dietpi/login
. /DietPi/dietpi/func/dietpi-globals
EOT


# Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Rust (for rg & fd)
curl https://sh.rustup.rs -sSf | sh
cargo install fd-find
cargo install ripgrep
cargo install bat

# Remove annoying motd
sudo echo "" > /etc/motd