"========================
" vim plug - load plugins
"========================
call plug#begin('~/.config/nvim/plugged')
" vim-tmux-nav - allows seamless navigation between vim and tmux splits
Plug 'christoomey/vim-tmux-navigator'
" vim-one - Light and dark vim colorscheme, shamelessly stolen from atom
Plug 'rakr/vim-one'
" NerdTree - a tree explorer
Plug 'scrooloose/nerdtree'
" fugitive - git wrapper
Plug 'tpope/vim-fugitive'
" vim-airline - status/tabline for vim
Plug 'vim-airline/vim-airline'
" vim-airline-themes - official theme repository for vim-airline 
Plug 'vim-airline/vim-airline-themes'
" python-syntax - improved python syntax
Plug 'vim-python/python-syntax'
" python-pep8-indent - better python indentation conforming to pep8
Plug 'Vimjas/vim-python-pep8-indent'
" StanAngeloff/php.vim - an up-to-date Vim syntax for PHP
Plug 'StanAngeloff/php.vim'
" pangloss/vim-javascript - improved JavaScript indentation and syntax
Plug 'pangloss/vim-javascript'
" vimux - interact with tmux inside vim
Plug 'benmills/vimux'
" emmet - improved html and css
" Plug 'mattn/emmet-vim'
" html5 - indent and syntax & inline omnicomplete for html5
Plug 'othree/html5.vim'
" vimtex - better LaTeX support
Plug 'lervag/vimtex'
" vim-devicons - adds glyphs to various vim plugins
" vim-sensible - a universal set of defaults that (hopefully) everyone can agree on
Plug 'tpope/vim-sensible'
" vim-grepper - use your favorite grep tool to start asynchronous search
Plug 'mhinz/vim-grepper'
" NOTE: always load last
Plug 'ryanoasis/vim-devicons'
call plug#end()


"=================
" General Settings
"=================
set nocompatible

" Syntax highlighting
syntax enable

" Colors
set termguicolors
colorscheme one
set background=dark

" Default indentation
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set number

let mapleader=","


"=========
" Mappings
"=========
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

" window handling mappings
"=========================
" easier split navigations (CTRL-J/CTRL-K/CTRL-L/CTRL-H)
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" vv to generate new vertical split
nnoremap <silent> vv <C-w>v 

" vimux mappings
"===============
" prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>
" run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>
" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>
" Zoom the tmux runner pane
map <Leader>vz :VimuxZoomRunner<CR>


"=================
" airline settings
"=================
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


"================
" Python settings
"================
" python-syntax highlighting 
let g:python_highlight_all = 1


"================
" HTML & CSS
"================

"================
" LaTeX
"================

