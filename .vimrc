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

" mice.
set mouse=a
set ttymouse=xterm2

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

" this would be set if you wanted to run pylint for EVERYTHING running 'make'
" set makeprg=pylint\ --reports=n\ --output-format=parseable\ %:p

