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

#git clone git://github/com/ariya/phantomjs.git
#cd phantomjs
#checkout 2.0
#./build.py

wget https://phantomjs.googlecode.com/files/phantomjs-1.9.2-linux-x86_64.tar.bz2
tar jxfv phantomjs-1.9.2-linux-x86_64.tar.bz2 phantomjs
