"------------------------------------------------------------------------------
" General / Appearance / Behavior
"------------------------------------------------------------------------------
set exrc                             " exec a local vimrc (like direnv) 
set relativenumber                   " releative number in the gutter
set nu                               " current line number
set nohlsearch                       " don't highlight search
set incsearch                        " jump incrementally to search results
set hidden                           " hidden buffers
set noerrorbells                     " ding ding
set nowrap                           " don't wrap long lines
set noswapfile                       " don't need no swap files!
set nobackup                         " ... or a backup!
set undodir=~/.nvim/undodir          " set a undodir
set undofile                         " set an undofile
set scrolloff=8                      " scroll offwidth so it's not the bottom
set termguicolors                    " enable 24 bit colors in terminal
set colorcolumn=80                   " bar at 80 chars
set signcolumn=yes                   " set the bar color column always
set nocompatible                     " no vi compatibility
set mouse=a                          " always enable mouse mode
set tabstop=4                        " Taaaabs
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smartcase                        " dynamically search with case
set splitbelow                       " automagically split going down
set splitright                       " automagically split going right
set listchars=tab:▸\ ,eol:¬,trail:·  " see hidden chars and their colors
set list
set updatetime=100
highlight NonText ctermfg=239
highlight SpecialKey ctermfg=239

set clipboard^=unnamed               " Clipboard working with browser
set clipboard^=unnamedplus


"-----------------------------------------------------------------------------
" Plugged, minimal plugin manager
"-----------------------------------------------------------------------------
call plug#begin('~/.nvim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }       " Ensure fzf
Plug 'junegunn/fzf.vim'                                   " fzf vim commands
Plug 'morhetz/gruvbox'                                    " Color patters
Plug 'vimwiki/vimwiki'                                    " A place for thoughts
Plug 'tpope/vim-fugitive'                                 " Awesome git in vim
Plug 'airblade/vim-gitgutter'                             " Git gutter in vim
Plug 'preservim/nerdcommenter'                            " Easily commenting
Plug 'tpope/vim-surround'                                 " brace surrounding
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'}         " gophers!
Plug 'scrooloose/nerdtree'                                " Directory tree
Plug 'vim-airline/vim-airline'                            " Lower explore bar
Plug 'mbbill/undotree'                                    " undoing things
Plug 'mg979/vim-visual-multi', { 'branch': 'master' }     " multi cursor drifting
Plug 'neovim/nvim-lspconfig'
call plug#end()

" Colors
colorscheme gruvbox
highlight Normal guibg=none

" for vimwiki
set nocompatible
filetype plugin on
syntax on


" ----------------------------------------------------------------------------
" General remaps, autocommand groups, etc
" ----------------------------------------------------------------------------

let mapleader = " "

" pane switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" How to save on focus lost?

" Remap esc to rolling jk
inoremap jk <ESC>

augroup YAMLS
    autocmd!
    autocmd Filetype yaml setlocal tabstop=2 shiftwidth=2 expandtab
    autocmd Filetype yml setlocal tabstop=2 shiftwidth=2 expandtab
augroup END

" Switch between files
nnoremap <leader>` <c-^>

" Quickly open nvim init
nnoremap <silent> <leader>ini :edit $MYVIMRC<cr>


