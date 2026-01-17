" Automatic indentation, syntax highlighting, etc. based on file type.
syntax on
filetype plugin indent on

" Pollen.
autocmd BufRead,BufNewFile *.p,*.pm,*.pp setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd! bufreadpost *.p,*.pm,*.pp set syntax=off
autocmd BufRead,BufNewFile *.html.pmd set filetype=markdown

" LaTeX.
autocmd BufRead,BufNewFile *.tex setlocal shiftwidth=2 softtabstop=2 expandtab

" Go.
autocmd FileType go setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4

" C.
autocmd FileType c setlocal shiftwidth=2 softtabstop=2 expandtab

" Display column number.
set ruler

" Set default indendation.
set shiftwidth=4
set softtabstop=4
set expandtab

" Search highlighting.
set incsearch
set hlsearch

" Setting up line numbers.
set number
set relativenumber

" Remaps.
let mapleader = " "
let maplocalleader = "\\"
noremap <c-d> <c-d>zz
noremap <c-u> <c-u>zz
vnoremap Y "+y
vnoremap <leader>p "_dP
nnoremap <leader>sv :source $MYVIMRC<cr>

" Fix pasting.
if &term =~ "tmux"
    let &t_BE = "\e[?2004h"
    let &t_BD = "\e[?2004l"
    exec "set t_PS=\e[200~"
    exec "set t_PE=\e[201~"
endif

