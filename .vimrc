set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" Keep Plugin commands between vundle#begin/end.

" Rich terminal colors plugin
" https://github.com/sonph/onehalf/tree/master/vim
Plugin 'sonph/onehalf', {'rtp': 'vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" mice.
set mouse=a
set ttymouse=xterm2


" color related stuff
colorscheme onehalfdark
let g:airline_theme='onehalfdark'

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" general appearance
set number
set t_Co=256
set bg=dark
syntax on
set ruler
set laststatus=2
set showmode

set encoding=utf-8
set fileencoding=utf-8

" whitespace
highlight ExtraWhitespace ctermbg=lightblue
match ExtraWhitespace /\s\+$/

" all tabs turn into 4 spaces
set expandtab
set tabstop=4

set listchars=tab:▸\ ,eol:¬
set softtabstop=4
set shiftwidth=4
set smarttab
set autoindent
set preserveindent
set copyindent

" search
set ignorecase
set smartcase
set hlsearch
set incsearch

" line length of 120 is totally fine
set textwidth=120

" Show a couple lines ahead/behind when scrolling
set scrolloff=3

" Don't allow lines of opened files to dictate vim settings
set modelines=0

" max speed?
set ttyfast

" for all python files, run pylint when I issue the 'make' command in vim
autocmd FileType python let &makeprg='pylint --reports=n --output-format=parseable %:p'
set errorformat=%f:%l:\ %m

" this would be set if you wanted to run pylint for EVERYTHING running 'make'
" set makeprg=pylint\ --reports=n\ --output-format=parseable\ %:p

" add closing braces and brackets
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
