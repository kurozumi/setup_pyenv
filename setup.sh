#!/bin/bash

git clone https://github.com/yyuu/pyenv.git ~/.pyenv

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile

source ~/.bash_profile

pyenv install 2.7.8
pyenv rehash
pyenv global 2.7.8

pip install -r piplist.txt

wget https://phantomjs.googlecode.com/files/phantomjs-1.9.2-linux-x86_64.tar.bz2
tar jxfv phantomjs-1.9.2-linux-x86_64.tar.bz2
sudo cp phantomjs-1.9.2-linux-x86_64.tar.bz2/bin/phantomjs /usr/local/bin
