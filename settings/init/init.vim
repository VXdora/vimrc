" load .vimrc immediately
" :source ~/.vimrc

inoremap jj <Esc><Esc>

set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
set fileformats=unix,dos,mac
set ambiwidth=double

set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd
set nowrap

set relativenumber
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest

set title

set whichwrap=b,s,h,l,<,>,[,],~

nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

set backspace=indent,eol,start
set expandtab
set tabstop=2
set softtabstop=2
set autoindent
set shiftwidth=2

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>
