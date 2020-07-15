# vim-config
Collection of vim config for setting up on a offline system.
TODO: Make this all possible offline.

## Download

Download the repo
```
git clone --recurse https://github.com/BenNewsome/vim-config.git ~/.vim
```

Include the source code and dependencies
```
git submodule update --init --recursive
```

## Check that all requirements are installed.

```
cd .vim
bash check_system.sh
```


## Compile VIM8

https://gist.github.com/Pompeu/c711b6e35f3ae5deb5e81a938c3cc507

```
./configure --with-features=huge \
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
            
# 4.
make VIMRUNTIMEDIR=/usr/local/share/vim/vim81

# 5.
cd ~/vim
sudo make install

# 6.
sudo update-alternatives --install /usr/bin/editor editor  /usr/local/bin/vim 1
sudo update-alternatives --set editor /usr/bin/vim editor  /usr/local/bin/vim
sudo update-alternatives --install /usr/bin/vi vi  /usr/local/bin/vim 1
sudo update-alternatives --set vi /usr/local/bin/vim
```

## Install Ale
https://github.com/dense-analysis/ale


## Install YouCompleteMe
https://github.com/ycm-core/YouCompleteMe


# Install YouCompleteMe

```
cd ~/.vim/pack/dist/start/YouCompleteMe
./install.py
```

