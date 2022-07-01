"========================================
" GENERAL VIM MAPPINGS
"========================================
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

"========================================
" PLUGIN MAPPINGS
"========================================
"
"====================
" vimux mappings
"====================
" prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>
" run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>
" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>
" Zoom the tmux runner pane
map <Leader>vz :VimuxZoomRunner<CR>
