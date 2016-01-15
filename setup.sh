#!/bin/bash

git clone https://github.com/yyuu/pyenv.git ~/.pyenv

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile

exec $SHELL

pyenv install 2.7.8

pyenv rehash

pyenv global 2.7.8

pip install -r piplist.txt

git clone --recursive git://github/com/ariya/phantomjs.git

cd phantomjs

./build.py
