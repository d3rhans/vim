set nocompatible

call plug#begin('~/.vim/plugged')
    " Color scheme
    Plug 'joshdick/onedark.vim'

    " Basics
    Plug 'sheerun/vim-polyglot'
    Plug 'tpope/vim-sensible'     
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'ludovicchabant/vim-gutentags'
    Plug 'Raimondi/delimitMate'

    " Snippets
    Plug 'Jorengarenar/miniSnip'

    " Latex
    Plug 'lervag/vimtex'
call plug#end()

" General settings/appearance/behavior
filetype plugin indent on
syntax on                   " Load syntax files
set ttyfast                 " Fast terminal
set switchbuf=usetab        " Use open buffer in window/tab, when switching
set showmatch               " Show matching {[()]}
set cursorline              " Highlight current line
set wildmenu                " Menu for autocomplete in commands
set showcmd                 " Show last command
set lazyredraw              " Only redraw window if needed
set textwidth=100           " Default textwidth
set scrolloff=10            " Keep 10 lines above and below when scrolling
set undofile                " Store undo history
set undodir=~/.vim/undo/    " Place to store undo history
set updatetime=500          " ms delay for writing the swapfile
set path+=**                " Search files recursively from CWD
set number                  " activate line numbering
set relativenumber          " activate relative line numbering
set diffopt+=vertical       " Use vertical split for vimdiff
set laststatus=2            " Always show a statusline in last window
set cmdheight=2             " Use two lines for the command line/output
set nomodeline              " Dont execute stuff...
set signcolumn=yes          " Always show sign column

" Searching
set incsearch               " Start searching while typing
set hlsearch                " Highlight search results
set ignorecase              " Search case insensitve
set smartcase               " Search case sensitive, if search term contains upper case characters

" Indents
set tabstop=8               " Default tab width
set shiftwidth=4            " Default auto-indent width
set softtabstop=4           " Number of spaces for a tab while editing
set expandtab               " Expand tabs to spaces
set autoindent              " Copy indent from previous line

" tags
set tags=./tags;$HOME

" Spell check
set spelllang=en
set nospell


" Color scheme
set termguicolors            " True color support
colorscheme onedark          " The colorscheme

" Time to grow up
nnoremap <up>     <nop>
nnoremap <down>   <nop>
nnoremap <left>   <nop>
nnoremap <right>  <nop>
vnoremap <up>     <nop>
vnoremap <down>   <nop>
vnoremap <left>   <nop>
vnoremap <right>  <nop>

" I never need ex-mode and it just annoys me
nnoremap Q <nop>
vnoremap Q <nop>

" Latex
let g:tex_flavor='latex'

" Gutentags
let g:gutentags_define_advanced_commands=1

" vimtex
let g:vimtex_view_method = 'zathura'
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_quickfix_ignore_filters = [
        \ 'Underfull',
        \ 'Overfull',
        \ 'specifier changed to',
      \ ]
