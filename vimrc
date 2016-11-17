source $XDG_CONFIG_HOME/vim/before.vim

" Vim8 package {
packadd! matchit
" }

source $XDG_CONFIG_HOME/vim/config.vim
" Mappings { 
"nnoremap <Leader>ev :vsplit $XDG_CONFIG_HOME . "/vim/vimrc"<CR>
"nnoremap <Leader>sv :so $XDG_CONFIG_HOME . "/vim/vimrc"<CR>
" }
source $XDG_CONFIG_HOME/vim/after.vim
