set encoding=utf-8

set tabstop=2
set expandtab
set shiftwidth=2
set number
set bs=2

syntax on

silent! helptags ALL
filetype plugin on

packloadall

highlight ALEError ctermbg=none cterm=underline
