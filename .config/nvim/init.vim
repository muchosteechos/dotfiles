"========================
" vim plug - load plugins
"========================
call plug#begin('~/.config/nvim/plugged')
" vim-tmux-nav - allows seamless navigation between vim and tmux splits
Plug 'christoomey/vim-tmux-navigator'
" awesome-vim-colorschemes - collection of awesome color schemes for vim
" merged for quick use
Plug 'rafi/awesome-vim-colorschemes'
" fugitive - git wrapper
Plug 'tpope/vim-fugitive'
" coc - make your neovim as smart as VSCode
" Plug 'neoclide/coc.nvim' {'branch': 'release'}
" vim-airline - status/tabline for vim
Plug 'vim-airline/vim-airline'
" vim-airline-themes - official theme repository for vim-airline 
Plug 'vim-airline/vim-airline-themes'
" python-syntax - improved python syntax
Plug 'vim-python/python-syntax'
" python-pep8-indent - better python indentation conforming to pep8
Plug 'Vimjas/vim-python-pep8-indent'
" vim-sensible - a universal set of defaults that (hopefully) everyone can agree on
Plug 'tpope/vim-sensible'
" vimtex - VimTeX is a modern neovim filetype and syntax plugin for LaTeX
Plug 'lervag/vimtex'
" vim-grepper - use your favorite grep tool to start asynchronous search
Plug 'mhinz/vim-grepper'
" vimwiki - a personal wiki for Vim
Plug 'vimwiki/vimwiki'
" vim-snippets - 
" vim-commentary - comment stuff out fast & easy
Plug 'tpope/vim-commentary'
" chadtree - file manager for Neovim, Better than NERDTree.
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do':'python3 -m chadtree deps'}
" NOTE: always load last
Plug 'ryanoasis/vim-devicons'
call plug#end()


"=================
" General Settings
"=================
set nocompatible

" Syntax highlighting
syntax enable
filetype plugin on

" Colors
set termguicolors
colorscheme one
" set background=dark

" whitespace options
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,space:.

" Default indentation
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set number

let mapleader=","
let maplocalleader='\'


"=========
" Mappings
"=========
" Unmap the arrow keys
no <down> <Nop>
no <left> ddkP
no <right> ddp
no <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

" Unmap mouse
set mouse=""

map <ScrollWheelUp> <nop>
map <S-ScrollWheelUp> <nop>
map <ScrollWheelDown> <nop>
map <S-ScrollWheelDown> <nop>

" grepper mappings
"nmap gs  <plug>(GrepperOperator)
"xmap gs  <plug>(GrepperOperator)


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

" vimtex
"================
let g:vimtex_view_method = 'zathura'

"================
" NERTree settings
"================
":let g:NERDTreeWinSize = 22
"
"================
" vimwiki settings
"================
let g:vimwiki_list = [{'syntax': 'markdown'}]
