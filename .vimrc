"""  settings for VIM

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Line indexing, UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set number
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntax
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax enable

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme default
hi LineNr ctermfg=242
hi CursorLineNr ctermfg=15
hi VertSplit ctermfg=8 ctermbg=0
hi Statement ctermfg=3

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mouse Scrolling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set mouse=nicr

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fixes mouse issues using Alacritty terminal
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set ttymouse=sgr

