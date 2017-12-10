"=========================================================
"======================= vim-plug ========================
"=========================================================

call plug#begin('~/.vim/plugged')

" vim-colorschemes - one colorscheme pack to rule them all 
Plug 'https://github.com/flazz/vim-colorschemes'

" NerdTree - a tree explorer
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" fugitive - git wrapper
Plug 'tpope/vim-fugitive'

" vim-airline - status/tabline for vim
Plug 'vim-airline/vim-airline'

" python-syntax - improved python syntax
Plug 'vim-python/python-syntax'

" pangloss/vim-javascript - improved JavaScript indentation and syntax
Plug 'pangloss/vim-javascript'

" Initialize plugin system
call plug#end()

"=========================================================
"======================= Settings ========================
"=========================================================

set number

let mapleader=","

" Set colorscheme
colorscheme onedark
syntax on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=80
set smarttab
set expandtab

"=========================================================
"======================= Mappings ========================
"=========================================================

" Unmap the arrow keys
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

"=========================================================
"======================== Python Settings
"=========================================================
" au BufNewFile,BufRead *.py 
"    \ set tabstop=4 |
"    \ set softtabstop=4 |
"    \ set shiftwidth=4 |
"    \ set textwidth=80 |
"    \ set smarttab |
"    \ set expandtab |
"    \ set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

au BufNewFile, BufRead *.tex
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set smarttab |
    \ set expandtab |
