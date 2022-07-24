highlight Cursor guifg=white guibg=yellow
highlight iCursor guifg=white guibg=#b8bb26

set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-commentary'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/mattn/emmet-vim'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-obsession'
call plug#end()

let mapleader = " "

" Add new line above and below
nnoremap [<leader> mzO<c-[>`z
nnoremap ]<leader> mzo<c-[>`z

nnoremap <C-[> :nohl<CR>
nnoremap <leader>so :so %<CR>

" Obsession plugin setting
nnoremap ZZ :wa \| qa<cr>
nnoremap <leader>S :Obsession!<cr>
autocmd VimEnter * Obsession

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

" set completeopt = "menuone,noselect"

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

" cursor shape setting
let &t_SI = "\<esc>[5 q"
let &t_SR = "\<esc>[1 q"
let &t_EI = "\<esc>[1 q"
set ttimeout
set ttimeoutlen=1
set listchars=tab:>-,trail:~,extends:>,precedes:<,space:.
set ttyfast
set number

" Optionally reset the cursor on start:
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[1 q"
autocmd VimEnter * redraw!
autocmd VimEnter * execute "normal \<C-G>"
augroup END
