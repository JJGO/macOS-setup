#!/bin/bash

set -e 			# Exit on error
set -o pipefail # Exit on pipe error
set -x 			# Enable verbosity

# Python from pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# Install python2
pyenv install 2.7.13
# Install python2
pyenv install 3.6.0

# Install packages 3
pyenv global 3.6.0
pip install -r pip.req -r conda.req

# Install full anaconda and packages
pyenv install anaconda3-4.2.0
conda install --yes --file conda.req

mkdir ~/.virtualenvs

# Create Python Environment
# conda-env create environment.yml