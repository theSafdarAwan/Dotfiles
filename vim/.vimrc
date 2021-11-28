call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-commentary'
call plug#end()

let mapleader = " "

syntax on

set number
set relativenumber 
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noswapfile
set undofile

noremap <leader>ff :FZF<cr>
vnoremap <c-[> <ESC>
