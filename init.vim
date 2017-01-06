set termguicolors
source $HOME/.config/vim/before.vim

source $HOME/.config/vim/config.vim


let g:python_host_prog  = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'
" Neovim Mappings {{{
" Terminal Mappings {{{
tnoremap jk <C-\><C-n>
tnoremap <Esc> <C-\><C-n>
" }}}

" Normal Mode Mapping {
nnoremap <Leader>ev :vsplit $HOME/.config/nvim/init.vim<CR>
nnoremap <Leader>sv :so $HOME/.config/nvim/init.vim<CR>
" }}}

" }}}
source $HOME/.config/vim/after.vim
