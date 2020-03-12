"""  settings for VIM

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()		" required, all plugins must appear after this line.

Plugin 'vim-airline/vim-airline'					" Airline
Plugin 'vim-airline/vim-airline-themes'				" Airline Themes
Plugin 'hdima/python-syntax'                        " enhanced python highlighting
Plugin 'python-mode/python-mode'

call vundle#end()		" required, all plugins must appear before this line.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visuals
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Setting airline theme
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='angr'

" Uncomment to prevent non-normal modes showing in powerline and below powerline.
set noshowmode

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Line indexing, UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set number
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntax
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax enable
set hlsearch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Splits, text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright

" Enable auto-completion in vim commands (:)
set wildmode=longest,list,full

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab
set autoindent
set shiftround

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" line cunting
set linebreak

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
