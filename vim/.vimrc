 " Don't try to be vi compatible
 set nocompatible

 " Helps force plugins to load correctly when it is turned back on below
 filetype off

 " Turn on syntax highlighting
 syntax on

 " For plugins to load correctly
 filetype plugin indent on

 " Security
 set modelines=0

 " Show line numbers
 set number

 " Show file stats
 set ruler

 " Blink cursor on error instead of beeping (grr)
 set visualbell

 " Encoding
 set encoding=utf-8

 " Whitespace
 set wrap
 set textwidth=79
 set formatoptions=tcqrn1
 set tabstop=2
 set shiftwidth=2
 set softtabstop=2
 set expandtab
 set noshiftround

 " Cursor motion
 set scrolloff=3
 set backspace=indent,eol,start
 set matchpairs+=<:> " use % to jump between pairs
 runtime! macros/matchit.vim

 " Move up/down editor lines
 nnoremap j gj
 nnoremap k gk

 " Allow hidden buffers
 set hidden

 " Rendering
 set ttyfast

 " Status bar
 set laststatus=2

 " Last line
 set showmode
 set showcmd

 " Searching
 nnoremap / /\v
 vnoremap / /\v
 set hlsearch
 set incsearch
 set ignorecase
 set smartcase
 set showmatch
 map <leader><space> :let @/=''<cr> " clear search

 " Remap help key.
 inoremap <F1> <ESC>:set invfullscreen<CR>a
 nnoremap <F1> :set invfullscreen<CR>
 vnoremap <F1> :set invfullscreen<CR>

 " Textmate holdouts

 " Formatting
 map <leader>q gqip

 " Visualize tabs and newlines
 set listchars=tab:▸\ ,eol:¬
 " Uncomment this to enable by default:
 " set list " To enable by default
 " Or use your leader key + l to toggle on/off
 map <leader>l :set list!<CR> " Toggle tabs and EOL

 " Color scheme (terminal)
 set t_Co=256
 set background=dark
 let g:solarized_termcolors=256
 let g:solarized_termtrans=1

  " Specify a directory for plugins
  " - For Neovim: stdpath('data') . '/plugged'
  " - Avoid using standard Vim directory names like 'plugin'
  call plug#begin('~/.vim/plugged')

  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'morhetz/gruvbox'
  Plug 'tpope/vim-commentary'
  Plug 'dracula/vim', { 'as': 'dracula' }

  call plug#end()
  let mapleader = "space"

 colorscheme dracula
 set background=dark

 syntax on
 set termguicolors
 let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
 let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

 set number
 set relativenumber
 set undofile
 set noswapfile

 " hello front end masters
 set path+=**

 " Nice menu when typing `:find *.py`
 set wildmode=longest,list,full
 set wildmenu
 " Ignore files
 set wildignore+=*.pyc
 set wildignore+=*_build/*
 set wildignore+=**/coverage/*
 set wildignore+=**/node_modules/*
 set wildignore+=**/android/*
 set wildignore+=**/ios/*
 set wildignore+=**/.git/*
