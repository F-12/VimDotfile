" Idendentify plantform {
silent function! OSX()
return has('macunix')
    endfunction

    silent function! LINUX()
    return has('unix') && !has('macunix') && !has('win32unix')
  endfunction

  silent function! WINDOWS()
  return (has('win32') || has('win64'))
endfunction
" }

" General {
syntax enable
"syntax on
filetype off                  " required
set mouse=a
" use system clipboard
set clipboard=unnamed

set shortmess+=mr
set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
set virtualedit=block
set history=1000
set spell
set modifiable
set autowriteall
set showcmd

set backup
set backupdir=$HOME/.cache/vim/backup
set directory=$HOME/.cache/vim/swap

set undofile
set undodir=$HOME/.cache/vim/.undo/

" Vim UI {
set backspace=indent,eol,start
set showmatch
set incsearch
set hlsearch
set wildmenu
set wildmode=list:longest,full
set nofoldenable
set list                        " show tabs and end of lines
set listchars=tab:»·,nbsp:+,trail:·,extends:→,precedes:←
set cmdheight=2
" }

" Formating {
set nowrap
set autoindent
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set nojoinspaces
set splitright
set splitbelow
set pastetoggle=<F7>
" }

