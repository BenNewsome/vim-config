#!/bin/bash

# Compiles and installs vim on a ubuntu machine. Might work on other things

main () {
# This is the main function that calls everything else
# ensure we can sudo ;-)
#  sudo echo hi

  configure_vim
#  make_vim
#  set_system_to_use_vim
}

configure_vim () {
  cd ~/.vim/vim-source
  ./configure \
    --with-features=huge \
    --enable-multibyte \
    --enable-rubyinterp=yes \
    --enable-pythoninterp=yes \
    --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
    --enable-python3interp=yes \
    --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu \
    --enable-perlinterp=yes \
    --enable-luainterp=yes \
    --enable-gui=gtk2 \
    --enable-cscope \
    --prefix=/usr/local
}

make_vim () {
  cd vim-source
  make VIMRUNTIMEDIR=/usr/local/share/vim/vim81
  sudo make install
}

set_system_to_use_vim () {
  sudo update-alternatives --install /usr/bin/editor editor  /usr/local/bin/vim 1
  sudo update-alternatives --set editor /usr/local/bin/vim
  sudo update-alternatives --install /usr/bin/vi vi  /usr/local/bin/vim 1
  sudo update-alternatives --set vi /usr/local/bin/vim
}


# Run the main routine
main
