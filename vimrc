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
Plugin 'tpope/vim-surround'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-perl/vim-perl'
Plugin 'scrooloose/syntastic'
Plugin 'editorconfig/editorconfig-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
let perl_include_pod = 1
let perl_extended_vars = 1

" color theme
set t_Co=256
set background=light
colorscheme solarized

" use UTF-8
set encoding=utf-8

" use , as the leader
let mapleader = ","

" tabs
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" visual help
set number
set ruler
set listchars=tab:>-,trail:-
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

" Ctrl-f to escape insert mode
inoremap <C-f> <ESC>

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
nnoremap <silent> <Leader>x :Bclose<CR>
"
" buffers
set hidden
nnoremap <silent> <Leader>b :b#<CR>
nnoremap <silent> <Leader>j :bn<CR>
nnoremap <silent> <Leader>k :bp<CR>

" search for selected text with //
vnoremap // y/<C-R>"<CR>"

" enable mouse
set mouse=a

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:syntastic_python_pylint_post_args='--disable=import-error'
let g:syntastic_mode_map = {'passive_filetypes': ['perl']}
let g:syntastic_python_checkers = ['python3 -m flake8.run']
let g:syntastic_javascript_checkers = ['eslint']

" split windows
noremap <Tab> <C-W>w
noremap <Bar> <C-W>v<C-W><Right>
noremap - <C-W>s<C-W><Down>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" minibufexpl
let g:miniBufExplorerAutoStart = 0
nnoremap <silent> <Leader>u :MBEToggle<cr>
