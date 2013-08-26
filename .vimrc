set nocompatible
filetype on
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle manages Vundle
Bundle 'gmarik/vundle'

" Bundles
" Powerline alternative
Bundle 'itchyny/lightline.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/nerdtree'
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

" Lightline Configuration
set ls=2

" Nerdtree Configuration
map <C-n> :NERDTreeToggle<CR>

" Settings
set encoding=utf-8
filetype plugin indent on
:syntax on
colorscheme Tomorrow-Night-Bright

" Tabs and spaces
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set nowrap
set backspace=indent,eol,start
set textwidth=80
set colorcolumn=+1

" Line numbers
set nu
hi LineNR ctermfg=grey

" Keeps cursor away from the bottom
set scrolloff=10

" No more files
set nobackup
set noswapfile

" Reselect after visual indent
vnoremap < <gv
vnoremap > >gv

" Automatically reload vimrc when saved
au BufWritePost .vimrc so ~/.vimrc

" Remap esc
inoremap jk <Esc>
inoremap <Esc> <nop>

" Remap arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
