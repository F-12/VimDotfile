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

" set theme
set background=dark
colorscheme dracula
" Highlighting {
hi VertSplit guibg=bg guifg=bg
" }
" status bar
set laststatus=2
set ruler
set cursorline
set cursorcolumn

" set code folding
set foldmethod=syntax
"set nofoldenable
autocmd BufWinEnter * set number
autocmd BufWinEnter * set relativenumber
