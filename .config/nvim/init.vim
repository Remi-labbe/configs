syntax on
filetype plugin indent on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set noshowmode
set laststatus=2
set nohlsearch
set cursorline

set updatetime=50

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" ===> Plugins
call plug#begin('~/.vim/plugged')

" Debugger Plugins
"Plug 'puremourning/vimspector'
"Plug 'szw/vim-maximizer'

Plug 'leafgarland/typescript-vim'
Plug 'gruvbox-community/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'hdima/python-syntax'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'ap/vim-css-color'
Plug 'mbbill/undotree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

colorscheme gruvbox

let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ ['close'] ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ }
      \ }

" highlight Search cterm=NONE ctermfg=grey ctermbg=blue

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" Enable auto-completion in vim commands (:)
set wildmode=longest,list,full

" ===> command mode
let mapleader=" "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
