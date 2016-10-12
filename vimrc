
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

" Basic { 
  set nocompatible              " better be first line  be iMproved, required
  syntax enable
  syntax on
  filetype off                  " required
  set number
  set relativenumber
  set mouse=a
" }

" General {
    set shortmess+=mr
    set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
    set virtualedit=block
    set history=1000
    set spell

" }

" Vim UI {
    set backspace=indent,eol,start
    set showmatch
    set incsearch
    set hlsearch
    set wildmenu
    set wildmode=list:longest,full
    set foldenable
    set list
" }
" Formating {
    set nowrap
    set autoindent
    set shiftwidth=4
    set expandtab
    set tabstop=4
    set softtabstop=4
    set nojoinspaces
    set splitright
    set splitbelow
    set pastetoggle=<F7>
" }

" Plugin {

    " Vundle begin {
    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')
    " }
    
    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'
    
    " Install Plugin {
    " Keep Plugin commands between vundle#begin/end.
    
    " plugin on GitHub repo
    " Plugin 'tpope/vim-fugitive'
    Plugin 'ryanoasis/vim-devicons'
    Plugin 'scrooloose/nerdtree'
    Plugin 'Xuyuanp/nerdtree-git-plugin'
    
    "Plugin 'ryanoasis/nerd-fonts'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    
    Plugin 'altercation/vim-colors-solarized'
    Plugin 'gosukiwi/vim-atom-dark'
    Plugin 'NLKNguyen/papercolor-theme'
    
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
    Plugin 'airblade/vim-gitgutter'
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
    
    " }
    " All of your Plugins must be added before the following line
    " Vundel end {
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
    " }
" 
" Mapping {
    let mapleader=','
    let maplocalleader='_'

    " Code folding options
    nmap <leader>f0 :set foldlevel=0<CR>
    nmap <leader>f1 :set foldlevel=1<CR>
    nmap <leader>f2 :set foldlevel=2<CR>
    nmap <leader>f3 :set foldlevel=3<CR>
    nmap <leader>f4 :set foldlevel=4<CR>
    nmap <leader>f5 :set foldlevel=5<CR>
    nmap <leader>f6 :set foldlevel=6<CR>
    nmap <leader>f7 :set foldlevel=7<CR>
    nmap <leader>f8 :set foldlevel=8<CR>
    nmap <leader>f9 :set foldlevel=9<CR>
    
    noremap <C-\> :NERDTreeToggle<CR>
    
    nnoremap <Leader>ev :vsplit $MYVIMRC<CR>
    nnoremap <Leader>sv :so $MYVIMRC<CR>

    inoremap <C-x> <Esc>ddi
    
    " map Ctrl-s
    noremap <C-s> :update<CR>
    vnoremap <C-s> <C-C>:update<CR>
    inoremap <C-s> <C-O>:update<CR>
    
    nnoremap <silent> <F9> :TagbarToggle<CR>

" }
" Plugins {
    " vim-devicons {
    " Set VimDevIcons to load before these plugins!
    " NERDTree | vim-airline | CtrlP | powerline | unite | lightline.vim | vim-startify | vimfiler | flagship
    set guifont=Inconsolata\ for\ Powerline\ Nerd\ Font\ Complete\ Mono:h12
    " loading the plugin 
    let g:webdevicons_enable = 1
    " adding the flags to NERDTree 
    let g:webdevicons_enable_nerdtree = 1
    " adding to vim-airline's tabline 
    let g:webdevicons_enable_airline_tabline = 1
    " adding to vim-airline's statusline 
    let g:webdevicons_enable_airline_statusline = 1
    " ctrlp MRU file mode glyphs 
    let g:webdevicons_enable_ctrlp = 1
    " adding to flagship's statusline 
    let g:webdevicons_enable_flagship_statusline = 1
    " turn on/off file node glyph decorations (not particularly useful)
    let g:WebDevIconsUnicodeDecorateFileNodes = 1
    " use double-width(1) or single-width(0) glyphs 
    " only manipulates padding, has no effect on terminal or set(guifont) font
    let g:WebDevIconsUnicodeGlyphDoubleWidth = 2
    " whether or not to show the nerdtree brackets around flags 
    let g:webdevicons_conceal_nerdtree_brackets = 1
    " the amount of space to use after the glyph character (default ' ')
    let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
    let g:WebDevIconsNerdTreeBeforeGlyphPadding = ' '
    " Force extra padding in NERDTree so that the filetype icons line up vertically 
    let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

    let g:WebDevIconsOS = 'Darwin'
    " }
    "
    "
    " vim-airline {
    let g:airline_powerline_fonts = 1
    let g:airline_left_sep = "\uE0C6"
    let g:airline_right_sep = "\uE0C7"
    " set the CN (column number) symbol:
    let g:airline_section_z = airline#section#create(['%{line(".")}' . ":" . '%{col(".")}' . "/" . '%{line("$")}'])
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'
    " }
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


    "  }
" }
" set theme
set background=dark
colorscheme PaperColor

" status bar
set laststatus=2
set ruler
set cursorline
set cursorcolumn

" set code folding
set foldmethod=syntax
"set nofoldenable


