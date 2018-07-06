"=========================================================
"======================= vim-plug ========================
"=========================================================

call plug#begin('~/.config/nvim/plugged')
"======================== base16 =========================

" vim-colorschemes - one colorscheme pack to rule them all 
" Plug 'https://github.com/flazz/vim-colorschemes'

" vim-one - Light and dark vim colorscheme, shamelessly stolen from atom
Plug 'rakr/vim-one'

" awesome-vim-colorschemes - collection of awesome color schemes
" Plug 'rafi/awesome-vim-colorschemes'

" NerdTree - a tree explorer
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" fugitive - git wrapper
Plug 'tpope/vim-fugitive'

" vim-airline - status/tabline for vim
Plug 'vim-airline/vim-airline'
" vim-airline-themes - official theme repository for vim-airline 
Plug 'vim-airline/vim-airline-themes'

" python-syntax - improved python syntax
Plug 'vim-python/python-syntax'

" pangloss/vim-javascript - improved JavaScript indentation and syntax
Plug 'pangloss/vim-javascript'

" vim-devicons - adds glyphs to various vim plugins
" NOTE: always load last
Plug 'ryanoasis/vim-devicons'

" Initialize plugin system
call plug#end()

"=========================================================
"======================= Settings ========================
"=========================================================

" Syntax highlighting
syntax enable

" Colors
set termguicolors
colorscheme one
set background=dark

set number

let mapleader=","

"========== Default Whitespace-handling ==========

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
"=================== airline Settings ====================
"=========================================================

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'
                                      
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''

" set airline-theme
let g:airline_theme = 'one'

"=========================================================
"=================== Python Settings =====================
"=========================================================

" python-syntax highlighting 
let g:python_highlight_all = 1


"=========================================================
"=========================================================
"=========================================================
