"========================
" vim plug - load plugins
"========================
call plug#begin('~/.config/nvim/plugged')
" Essential
Plug 'tpope/vim-sensible'

Plug 'tpope/vim-fugitive'

Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do':'python3 -m chadtree deps'}
Plug 'SirVer/ultisnips'

" Utility
Plug 'tpope/vim-commentary'

" Integration
Plug 'christoomey/vim-tmux-navigator'
Plug 'mhinz/vim-grepper'

" File specific
Plug 'vim-python/python-syntax'
Plug 'Vimjas/vim-python-pep8-indent'

Plug 'lervag/vimtex'

" Style
Plug 'rafi/awesome-vim-colorschemes'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Managment
Plug 'vimwiki/vimwiki'
    Plug 'tools-life/taskwiki'

" NOTE: ALWAYS LOAD THIS LAST
Plug 'ryanoasis/vim-devicons'
call plug#end()


"=================
" General Settings
"=================
set nocompatible

" Syntax highlighting
syntax enable
filetype on

" Colors
set termguicolors
colorscheme one
" set background=dark

" whitespace options
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,space:.

" Default indentation
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" vim behavior
set hidden

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

map <Leader>wm :resize<CR>
map <Leader>we <C-w>=
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

" CHADtree mappings
"===============
map <Leader>co :CHADopen<CR>
map <Leader>cf :CHADopen --always-focus<CR>

" UltiSnips mappings

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
" vimwiki settings
"================
let g:vimwiki_list = [{'path': '~/other/vimwiki/', 'syntax': 'markdown', 'ext': '.md', 'list_margin': 0}]
let g:vimwiki_h1_cb_checked = 2
let g:vimwiki_listsyms = '✗○◐●✓'

"================
" UltiSnips settings
"================
let g:UltiSnipsSnippetDirectories=['custom_snips', "UltiSnips"]
let g:UltiSnipsSnippetStorageDirectoryForUltiSnipsEdit=[$HOME.'/.config/custom_snips']

