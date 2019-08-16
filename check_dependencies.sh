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
)

echo "Please install the following package (If any are required).";
echo "sudo apt-get install -y \\"
for i in "${apt_packages[@]}"; do
  if [ $(dpkg-query -W -f='${Status}' $i 2>/dev/null | grep -c "ok installed") -eq 0 ]; then
    echo "  $i \\";
  fi
done
echo "Package check complete."
