set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugins
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'viis/vim-bclose'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'w0rp/ale'
Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on

" color theme
set t_Co=256
set background=light
colorscheme morning

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
inoremap jk <ESC>

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
set mouse=v

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

" ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

" ALE
let b:ale_fixers = {'python': ['black']}
nnoremap <silent> <Leader>f :ALEFix<CR>

" ctags
set autochdir
set tags=tags
nnoremap <silent> <Leader>s :ts<CR>

" tagbar
nnoremap <silent> <Leader>t :TagbarToggle<CR>
