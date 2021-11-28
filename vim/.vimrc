call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-commentary'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug  'https://github.com/mattn/emmet-vim'
call plug#end()

let mapleader = " "

syntax on
colorscheme OceanicNext

set number
set relativenumber 
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noswapfile
set undofile
set wildmenu

noremap <leader>ff :FZF<cr>
vnoremap <c-[> <ESC>

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
