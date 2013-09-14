set nocompatible	        " Choose no compatibility with legacy vi
filetype off

"" Vundle Setup
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

"" Whitespace
set nowrap			            " Don't wrap lines
set tabstop=4 shiftwidth=4 	    " Use four spaces
set expandtab			        " Use spaces, not tabs
set backspace=indent,eol,start  " Backspace throught everything in insert mode

"" Searching
set hlsearch		" Highlight matches
set incsearch		" Incremental searching
set ignorecase		" Searches are case insensitive
set smartcase		" unless they contain at least on capital letter

"" Bundles
" Vim-Airline (Similar to powerline)
Bundle 'bling/vim-airline'

" Tomorrow Night Color Scheme
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

" DelimitMate
Bundle 'Raimondi/delimitMate'

" NERDTree
Bundle 'scrooloose/nerdtree'

" Zencoding
Bundle 'mattn/zencoding-vim'

" LESS Hightlighting
Bundle 'lunaru/vim-less'

" Control P
Bundle 'ctrlp.vim'

"" Common settings
syntax enable                       " Enable syntax
set encoding=utf-8                  " Turn on UTF-8 Encoding
set showcmd		                    " Display incomplete commands
set number                          " Turns on line numbers
hi LineNR ctermfg=grey              " Sets the color of the line numbers
filetype plugin indent on           " Load file type plugins + indentation
colorscheme Tomorrow-Night          " Set the colorscheme
set scrolloff=25
set noswapfile                      " Turn off swap files

"" Set character limit
set textwidth=80
set colorcolumn=+1

"" Airline Fix
set laststatus=2    " Fixes issue with airline not showing unless a split is created

"" Turn off arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"" Remapping
imap jk <Esc>   " Mapping JK to Esc to save time
map <C-n> :NERDTreeToggle<CR>   " Adds a toggle to open NERDTree
let g:user_zen_expandabbr_key = '<c-e>'    " Changes the zencoding expand shortcut

"" CtrlP Settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"" Ubuntu Fix
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif
