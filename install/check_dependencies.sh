#!/bin/bash

# List of apt packages.
apt_packages=(
# Apt packages required
libncurses5-dev
libgnome2-dev
libgnomeui-dev
libgtk2.0-dev
libatk1.0-dev
libbonoboui2-dev
libcairo2-dev
libx11-dev
libxpm-dev
libxt-dev
python-dev
python3-dev
ruby-dev
lua5.1
lua5.1-dev
libperl-dev
cmake
)


apt_install="sudo apt-get install -y "
for i in "${apt_packages[@]}"; do
  apt_install+="$i "
done

pip_packages=(
flake8
jedi
)

pip_install="sudo pip install "
pip3_install="sudo pip3 install "
for i in "${pip_packages[@]}"; do
  pip_install+="$i "
  pip3_install+="$i "
done

echo $apt_install
echo $pip_install
echo $pip3_install
