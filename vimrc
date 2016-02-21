set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugins
Plugin 'tpope/vim-fugitive'
Plugin 'wincent/command-t'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'viis/vim-bclose'
Plugin 'airblade/vim-gitgutter'
Plugin 'Townk/vim-autoclose'
Plugin 'tpope/vim-surround'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'scrooloose/nerdcommenter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on

" color theme
set background=light
colorscheme solarized

" use UTF-8
set encoding=utf-8

" use , as the leader
let mapleader = ","

" tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" visual help
set number
set ruler
set listchars=eol:¬,tab:>-,trail:~
set list
set colorcolumn=120

" search
set hlsearch
set incsearch
set ignorecase
set smartcase

" line breaks
set nowrap
set formatoptions=l

set wildmenu
set showcmd
map Y y$

" set cursorcolumn
nnoremap ; :
nnoremap : ;

" remap j and k to scroll by visual lines
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" Ctrl-h to escape insert mode
inoremap <C-h> <ESC>

"This unsets the 'last search pattern' register by hitting return
nnoremap <CR> :noh<CR>

" map up/down to C-p/C-n in command line mode
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" increase command history
set history=200

" NerdTree
nnoremap <silent> <Leader>n :NERDTreeToggle<CR>

" bclose
nnoremap <silent> <Leader>c :Bclose<CR>
"
" buffers
set hidden
nnoremap <silent> <Leader>b :b#<CR>
