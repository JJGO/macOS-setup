# MOSH (mosh requires OpenSSH instead of Dropbear)
sudo apt-get install mosh
sudo iptables -I INPUT 1 -p udp --dport 60000:61000 -j ACCEPT

# VIM
sudo apt-get install vim

# Build essential (gcc)
sudo apt-get install build-essential
sudo apt-get install cifs-utils

# zsh & tmux
sudo apt-get install zsh
sudo apt-get install tmux
sudo apt-get install less

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

# Install ranger
sudo apt-get install ranger


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