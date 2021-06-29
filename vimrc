set encoding=utf-8

set tabstop=2
set expandtab
set shiftwidth=2
set number
set bs=2

set exrc
set secure

syntax on

silent! helptags ALL
filetype plugin on

packloadall

highlight ALEError ctermbg=none cterm=underline
highlight clear SpellBad
highlight SpellBad cterm=underline
