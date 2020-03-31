"""  settings for VIM

let mapleader=","

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()		" required, all plugins must appear after this line.

" Plugin 'vim-airline/vim-airline'					" Airline
" Plugin 'vim-airline/vim-airline-themes'				" Airline Themes
Plugin 'itchyny/lightline.vim'                      " vim lightline
Plugin 'mengelbrecht/lightline-bufferline'          " Adding top line to lightline
Plugin 'hdima/python-syntax'                        " enhanced python highlighting
Plugin 'PotatoesMaster/i3-vim-syntax'               " Adds i3 config highlighting
Plugin 'ap/vim-css-color'                            " hex color code highlighting
" Plugin 'mboughaba/i3config.vim'
" Plugin 'python-mode/python-mode'

call vundle#end()		" required, all plugins must appear before this line.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visuals
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Setting airline theme
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1
" let g:airline_theme='angr'

" Setting lightline theme
if !has('gui_running')
  set t_Co=256
endif

let g:lightline                  = {'colorscheme':'wombat'}
"let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
"let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
"let g:lightline.component_type   = {'buffers': 'tabsel'}

"autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()

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
" Automatically deletes all trailing whitespace on save.
	autocmd BufWritePre * %s/\s\+$//e

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

colorscheme peachpuff
hi LineNr ctermfg=242
hi CursorLineNr ctermfg=15
hi VertSplit ctermfg=8 ctermbg=0
hi Statement ctermfg=3

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mouse Scrolling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set mouse=nicr


set clipboard=unnamedplus
