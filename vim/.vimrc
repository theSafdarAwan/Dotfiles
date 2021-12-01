call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-commentary'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/mattn/emmet-vim'
Plug 'tpope/vim-unimpaired'
call plug#end()

let mapleader = " "

" Add new line above and below
nnoremap [<leader> mzO<c-[>`z
nnoremap ]<leader> mzo<c-[>`z

syntax on
colorscheme OceanicNext
set background=dark

set number
set relativenumber 
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set hlsearch
set ignorecase
set smartcase
set expandtab
set noswapfile
set undofile
set wildmenu

vnoremap <c-[> <ESC>
nnoremap <leader>ff :FZF<cr>
nnoremap <leader>no :noh<cr>

let g:fzf_colors =
            \ {
            \ 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'Comment'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] 
            \}
