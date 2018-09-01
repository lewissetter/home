set nocompatible
filetype off     

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'w0rp/ale'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'drmikehenry/vim-fontsize'
Plugin 'ervandew/supertab'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'honza/vim-snippets'

call vundle#end()           

syntax enable
set background=dark
colorscheme solarized

set spelllang=en
set spellfile=$HOME/.vim/spell/en.utf-8.add
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile
let mapleader = ","
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
set list
set listchars=tab:▸\ ,eol:¬
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
nnoremap ; :
au FocusLost * :wa
inorema kj <ESC>
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" make YCM compatible with UltiSnips (using supertab)
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsSnippetsDir='~/.vim/bundle/vim-snippets/snippets/'
