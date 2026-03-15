" Initialize vim-plug
call plug#begin('~/.vim/plugged')

" Modern C++ friendly colorschemes
Plug 'sainnhe/everforest' " forest green-blue bg, red and many shades of green
Plug 'arcticicestudio/nord-vim' " Cobalt blue bg, ice blue, light green
Plug 'joshdick/onedark.vim' " Gray bg, pink, lightgreen, orange

" Allows fuzzy find files
Plug 'junegunn/fzf.vim'

" Type pairs of things
Plug 'jiangmiao/auto-pairs'

call plug#end()

set termguicolors
set background=dark

" ---- Basics ----
set nocompatible
set number
set cursorline
set relativenumber
set hidden

" ---- Indentation (C++) ----
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" ---- Search ----
set ignorecase
set smartcase
set incsearch
set hlsearch

" ---- Editing comfort ----
set backspace=indent,eol,start
set wrap
set linebreak

" ---- Quality of life ----
set clipboard=unnamedplus
set pastetoggle=<F2>
set undofile

" ---- Style ----
syntax on
filetype plugin indent on
colorscheme onedark

" ---- Mapping ----
let mapleader = " " 

" ---- Normal Mode ----

" compile and run a c++ file
nnoremap <leader>r :w<CR>:term bash -c "g++ -std=c++20 % -o %< && ./%<; echo 'Press any key to close'; read -n1"<CR>

" Move 5 lines at a time
nnoremap <leader>j 5j
nnoremap <leader>k 5k

" Save / quit
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>wq :wq<CR>

" Next buffer
nnoremap <leader>n :bnext<CR>

" Yank to system clipboard
nnoremap <leader>y "+

" Requires netrw (built-in) or NERDTree plugin
nnoremap <leader>e :Ex<CR>

" Fuzzy file finder, Requires fzf.vim plugin
nnoremap <leader>p :Files<CR>

" Toggle terminal
nnoremap <leader>t :terminal<CR>

" Open vimrc
nnoremap <leader>, :e $MYVIMRC<CR>

" ---- Insert Mode ----

" Escape + save (jk / kj / JK / KJ)
inoremap jk <Esc>:w<CR>
inoremap JK <Esc>:w<CR>

