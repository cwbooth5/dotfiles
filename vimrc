set t_Co=256
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=$HOME/.vim/bundle/Vundle.vim
"call vundle#begin()

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

"call vundle#end()            " required

filetype plugin indent on    " required

set encoding=utf-8
setglobal fileencoding=utf-8

set showmode
set showcmd
set mouse=a

set background=light
colorscheme morning

syntax on

"" Whitespace
set tabstop=4 shiftwidth=4
set expandtab
set autoindent
set smartindent
"set backspace=indent,eol,start

"" Searching
set ignorecase
set smartcase
set hlsearch
set incsearch


nnoremap <Leader>- :split<cr>
nnoremap <Leader>\| :vsplit<cr>
nnoremap <Leader><Delete> :qall<cr>
nnoremap <Leader><S-Delete> :qall!<cr>

set ttymouse=term2
