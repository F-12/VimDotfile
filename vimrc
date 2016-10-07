syntax enable
syntax on
set nocompatible              " be iMproved, required
filetype off                  " required
set number
set relativenumber
set mouse=a
" Plugin Manager

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

"Plugin 'ryanoasis/nerd-fonts'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'altercation/vim-colors-solarized'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'NLKNguyen/papercolor-theme'
"Plugin 'ryanoasis/vim-devicons'

" syntax highlighting
Plugin 'pangloss/vim-javascript'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'kshenoy/vim-signature'
Plugin 'yegappan/grep'
Plugin 'mileszs/ack.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'SirVer/ultisnips'
Plugin 'derekwyatt/vim-protodef'
" Plugin 'vim-fswitch'
Plugin 'vim-scripts/nginx.vim'
Plugin 'tpope/vim-surround'
"Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/YouCompleteMe'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" Mapping
map <A-\> :NERDTreeToggle<CR>
map <C-s> :w<CR>

" set nerd-font
"set encoding=utf8
"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"let g:webdevicons_enable = 1
"let g:webdevicons_enable_nerdtree = 1
"let g:webdevicons_enable_unite = 1
"let g:webdevicons_enable_vimfiler = 0
"let g:webdevicons_enable_airline_tabline = 1
"let g:webdevicons_enable_airline_statusline = 1
" set theme
set background=dark
colorscheme PaperColor
" set status bar colorscheme
"let g:Powerline_colorscheme='solarized256'

" status bar
set laststatus=2
set ruler
set cursorline
set cursorcolumn
set hlsearch

set nowrap
" set code folding
set foldmethod=syntax
set nofoldenable

" set undo
set undofile
set undodir=$HOME/.vim/.undo_history/

" set ctrlp
let g:ctrlp_map = '<C-p>'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['pom.xml', '.p4ignore', 'package.json']

" set YouCompleteMe
let g:ycm_key_invoke_completion = '<M-Space>'
let g:ycm_auto_trigger = 1

" set tagbar


" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber


