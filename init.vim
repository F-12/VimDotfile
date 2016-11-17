source $XDG_CONFIG_HOME/vim/before.vim

source $XDG_CONFIG_HOME/vim/config.vim

" Neovim Mappings {{{
" Terminal Mappings {{{
tnoremap jk <C-\><C-n>
tnoremap <Esc> <C-\><C-n>
" }}}

" Normal Mode Mapping {
nnoremap <Leader>ev :vsplit ~/.config/nvim/init.vim<CR>
nnoremap <Leader>sv :so ~/.config/nvim/init.vim<CR>
" }}}

" }}}
source $XDG_CONFIG_HOME/vim/after.vim
