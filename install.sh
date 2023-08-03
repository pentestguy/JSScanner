#!/bin/bash

cwd=$(pwd)

mkdir -p ~/tools
cd ~/tools

if [[ ! -d ~/tools/LinkFinder ]]
then
        git clone https://github.com/pentestguy/LinkFinder.git
else
        printf "LinkFinder already present in tools folder...!\n\n"
fi

sudo apt install wget -y

cd LinkFinder

sudo pip3 install -r requirements.txt
sudo python3 setup.py install
pip install jsbeautifier

echo "alias jsscanner='$cwd/script.sh'" >> ~/.bash_profile

. ~/.bash_profile

echo "All set bro, restart your terminal!"
