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

" Add new line above and below
nnoremap [<leader> mzO<c-[>`z
nnoremap ]<leader> mzo<c-[>`z

nnoremap <leader>ff :FZF<cr>
cmap w!! w !sudo tee > /dev/null %

vnoremap <c-[> <ESC>
nnoremap <C-[> :nohl<CR>
nnoremap <leader>so :so %<CR>

" Obsession plugin setting
nnoremap ZZ :wa \| qa<cr>
nnoremap <leader>S :Obsession!<cr>

" Center the next searched item
nnoremap n nzz
nnoremap N Nzz

" copy the whole line after the cursor
nnoremap Y y$
vnoremap Y y$

" Wrap around the selection
vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>
vnoremap <leader>' <esc>`>a'<esc>`<i'<esc>
vnoremap <leader>` <esc>`>a`<esc>`<i`<esc>
vnoremap <leader>[ <esc>`>a]<esc>`<i[<esc>
vnoremap <leader>{ <esc>`>a}<esc>`<i{<esc>
vnoremap <leader>( <esc>`>a)<esc>`<i(<esc>
vnoremap <leader>* <esc>`>a*<esc>`<i*<esc>

" Remap of the century
nnoremap cn *``cgn
nnoremap cN *``cgN

" Paste onto the selection and don't copy the selection to the reg
vnoremap <leader>p "_dp

" undo break start new change points NOTE: it works only with ! , ` . =
inoremap ! !<c-g>u
inoremap ` `<c-g>u
inoremap . .<c-g>u
inoremap , ,<c-g>u
inoremap = =<c-g>u

" Move Lines up and down
vnoremap <C-j> :m '>+1<cr>gv=gv
vnoremap <C-k> :m '<-2<cr>gv=gv

nnoremap <leader>R :set relativenumber! \| redraw<cr>

" Add new line above and below
nnoremap [<leader> mzO<c-[>`z
nnoremap ]<leader> mzo<c-[>`z

" Copy to the system clipboard
vnoremap <leader>y "+y
nnoremap <leader>Y mzgg"+yG zz`z

" Paster From the system clipboard
nnoremap <leader>p "+p
" Paste onto the selection and don't copy the selection to the reg
vnoremap <leader>p _dp

" Yank the whole line after the cursor
nnoremap Y y$

" Indentation
vnoremap < <gv
vnoremap > >gv

" Resize the buffer window
nnoremap <leader>= :vertical resize +5<cr>
nnoremap <leader>- :vertical resize -5<cr>
nnoremap <leader>rp :resize 100<cr><c-l>

" indent the whole document
nnoremap <leader>I mzggVG=`z<c-l>

" buffers mappings
nnoremap <TAB> :bnext<cr>
nnoremap <S-TAB> :bprevious<cr>
nnoremap <leader>X :bdelte!<cr>
nnoremap <leader>C :close<cr>

" Spell checking
" Pressing ,ss will toggle and untoggle spell checking
nnoremap <leader>ss :set spell!<cr>

" Netrw
nnoremap <leader>vex :Vexplore<cr><c-w>L :vertical resize 30<cr>
