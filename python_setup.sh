#!/bin/bash

set -e 			# Exit on error
# set -o pipefail # Exit on pipe error
set -x 			# Enable verbosity

# Check if pyenv is in path and run init, else install pyenv
if command -v pyenv > /dev/null; then
    eval "$(pyenv init -)";
else
    curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash

    export PATH="$HOME/.pyenv/bin:$PATH"
    echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
    echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.zshenv

    eval "$(pyenv init -)"
    echo 'if command -v pyenv > /dev/null; then eval "$(pyenv init -)"; fi' >> ~/.bashrc
    echo 'if command -v pyenv > /dev/null; then eval "$(pyenv init -)"; fi' >> ~/.zshenv
fi

# Check if pyenv-virtualenv is in path and run init, else install pyenv-virtualenv
if command -v pyenv-virtualenv-init > /dev/null; then
    eval "$(pyenv virtualenv-init -)";
else
    if [ ! -d "$(pyenv root)/plugins/pyenv-virtualenv" ]; then

        git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv

        eval "$(pyenv virtualenv-init -)";
        echo 'if command -v pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi' >> ~/.bashrc
        echo 'if command -v pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi' >> ~/.zshenv
    fi
fi


# Install latest stable python2
LATEST_PYTHON2=$(pyenv install -l | grep -oP '^\s+(2.*\d)$' | sed 's/ //g' | tail -n 1)
CFLAGS="-I$(brew --prefix openssl)/include" \
LDFLAGS="-L$(brew --prefix openssl)/lib" \
pyenv install -s $LATEST_PYTHON2

# Install latest stable python3
LATEST_PYTHON3=$(pyenv install -l | grep -oP '^\s+(3.*\d)$' | sed 's/ //g' | tail -n 1)
CFLAGS="-I$(brew --prefix openssl)/include" \
LDFLAGS="-L$(brew --prefix openssl)/lib" \
pyenv install -s $LATEST_PYTHON3

# Install full anaconda and packages
LATEST_ANACONDA=$(pyenv install -l | grep -oP '^\s+(anaconda.*)' | sed 's/ //g' | tail -n 1)
CFLAGS="-I$(brew --prefix openssl)/include" \
LDFLAGS="-L$(brew --prefix openssl)/lib" \
pyenv install -s $LATEST_ANACONDA
pyenv global $LATEST_ANACONDA

# Install python packages
if [ -f pip.req ]; then
    pip install -r pip.req
fi

# Install conda packages
if [ -f conda.req ]; then
    conda install --yes --file conda.req
fi

# For jupyter extensions
conda install -c conda-forge jupyter_contrib_nbextensions
conda install -c conda-forge jupyter_nbextensions_configurator

open "https://ndres.me/post/best-jupyter-notebook-extensions"

# Set latest anaconda as default
pyenv global $LATEST_ANACONDA

# Create virtualenv folder
mkdir ~/.virtualenvs

# Check if pyenv doctor plugin is installed, install otherwise
if [ ! -d "$(pyenv root)/plugins/pyenv-doctor" ]; then
    git clone git://github.com/yyuu/pyenv-doctor.git ~/.pyenv/plugins/pyenv-doctor
fi

# Check if pyenv update plugin is installed, install otherwise
if [ ! -d "$(pyenv root)/plugins/pyenv-update" ]; then
    git clone git://github.com/yyuu/pyenv-update.git ~/.pyenv/plugins/pyenv-update
fi

# Check if pyenv which-ext plugin is installed, install otherwise
if [ ! -d "$(pyenv root)/plugins/pyenv-which-ext" ]; then
    git clone https://github.com/yyuu/pyenv-which-ext.git ~/.pyenv/plugins/pyenv-which-ext
fi


# Set jupyter theme
jt -t monokai -fs 11 -tfs 12 -nfs 14 -cellw 70% -T

conda install -c -y conda-forge jupyter_contrib_nbextensions
conda install -c -y conda-forge jupyter_nbextensions_configurator

# Create Python Environment
# conda-env create environment.yml

# Install local user python packages
mkdir -p $HOME/python-libs
cd $HOME/python-libs
git clone git@github.com:JJGO/Sylphrena.git
git clone git@github.com:JJGO/kirin.git
cd -