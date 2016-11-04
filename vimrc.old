
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
  set mouse=a
" }

" General {
    set shortmess+=mr
    set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
    set virtualedit=block
    set history=1000
    set spell
    set modifiable
    set autowriteall
    set showcmd
" }

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
    set shiftwidth=4
    set expandtab
    set tabstop=2
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
    Plugin 'tpope/vim-fugitive'
    Plugin 'ryanoasis/vim-devicons'
    Plugin 'scrooloose/nerdtree'
    Plugin 'Xuyuanp/nerdtree-git-plugin'
    
    Plugin 'mbbill/undotree'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    
    Plugin 'altercation/vim-colors-solarized'
    Plugin 'gosukiwi/vim-atom-dark'
    Plugin 'NLKNguyen/papercolor-theme'
    
    " syntax highlighting
    "Plugin 'pangloss/vim-javascript'
    Plugin 'othree/yajs.vim'
    Plugin 'ctrlpvim/ctrlp.vim'
    
    Plugin 'kshenoy/vim-signature'
    Plugin 'yegappan/grep'
    Plugin 'mileszs/ack.vim'
    Plugin 'dyng/ctrlsf.vim'
    Plugin 'terryma/vim-multiple-cursors'
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'derekwyatt/vim-protodef'
    " Plugin 'vim-fswitch'
    Plugin 'vim-scripts/nginx.vim'
    Plugin 'tpope/vim-surround'
    Plugin 'scrooloose/syntastic'
    Plugin 'majutsushi/tagbar'
    Plugin 'ternjs/tern_for_vim'
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'SirVer/ultisnips'
    Plugin 'chrisgillis/vim-bootstrap3-snippets'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'mattn/emmet-vim'
    Plugin 'ashisha/image.vim'
    Plugin 'darthmall/vim-vue'
    Plugin 'mattn/gist-vim'
    " Plugin 'mkitt/tabline.vim'
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
    "let g:webdevicons_enable_flagship_statusline = 1
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
    let g:airline_section_z = airline#section#create(['%{line(".")}' . "," . '%{col(".")}' . "/" . '%{line("$")}'])

    " set airline-tabline, see :h airline-tabline
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#show_tab_type = 1
    let g:airline#extensions#tabline#show_buffers = 1
    let g:airline#extensions#tabline#show_splits = 0
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'
    let g:airline#extensions#tabline#buffers_label = 'B'
    let g:airline#extensions#tabline#tabs_label = 'T'
    let g:airline#extensions#tabline#buffer_idx_mode = 1
    "let g:airline#extensions#tabline#show_close_button = 1
    let g:airline#extensions#tabline#buffer_nr_show = 1


    " }
    " set undo
    set undofile
    set undodir=$HOME/.vim/.undo_history/

    " set ctrlp
    let g:ctrlp_cmd = 'CtrlPLastMode'         " set ctrlp use last search mode
    let g:ctrlp_map = '<C-p>'                 " set ctrlp key map
    let g:ctrlp_working_path_mode = 'ra'
    let g:ctrlp_root_markers = ['pom.xml', '.p4ignore', 'package.json']
    let g:ctrlp_use_caching = 1
    let g:ctrlp_open_multiple_files = 'ij'
    let g:ctrlp_extensions = ['buffertag', 'tag', 'quickfix', 'dir']
    " set YouCompleteMe
    let g:ycm_key_invoke_completion = '<M-Space>'
    let g:ycm_auto_trigger = 1
    let g:ycm_error_symbol = "\uF0A4"       " use vim-devicons
    let g:ycm_warning_symbol = "\uF026"
    let g:ycm_complete_in_comments = 0
    let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
    let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

    " set UltiSnips
    let g:UltiSnipsEditSplit = "vertical"
    let g:UltiSnipsSnippetsDir = "~/.vim/UltiSnips"
    let g:UltiSnipsExpandTrigger="<Tab>"
    let g:UltiSnipsJumpForwardTrigger="<C-f>"
    let g:UltiSnipsJumpBackwardTrigger="<C-b>"

    " set tagbar
    let g:tagbar_show_linenumbers = 2
    let g:tagbar_compact = 1
    let g:tagbar_autofocus = 1
    let g:tagbar_indent = 1
    let g:tagbar_foldlevel = 3
    let g:tagbar_iconchars = ['+', '-']
    let g:tagbar_autopreview = 0

    " set nerdcommenter


    " enable line numbers
    let NERDTreeShowLineNumbers=1
    " make sure relative line numbers are used
    autocmd FileType nerdtree setlocal relativenumber


    "  }
" }
" Mapping {
    let mapleader=','
    let maplocalleader='_'
    
    inoremap jk <Esc>
    " Code folding options
    "nmap <leader>f0 :set foldlevel=0<CR>
    "nmap <leader>f1 :set foldlevel=1<CR>
    "nmap <leader>f2 :set foldlevel=2<CR>
    "nmap <leader>f3 :set foldlevel=3<CR>
    "nmap <leader>f4 :set foldlevel=4<CR>
    "nmap <leader>f5 :set foldlevel=5<CR>
    "nmap <leader>f6 :set foldlevel=6<CR>
    "nmap <leader>f7 :set foldlevel=7<CR>
    "nmap <leader>f8 :set foldlevel=8<CR>
    "nmap <leader>f9 :set foldlevel=9<CR>
    
    noremap <C-\> :NERDTreeToggle<CR>
    
    nnoremap <Leader>ev :vsplit $MYVIMRC<CR>
    nnoremap <Leader>sv :so $MYVIMRC<CR>

    inoremap <C-x> <Esc>ddi
    
    " map Ctrl-s
    noremap <C-s> :update<CR>
    vnoremap <C-s> <C-C>:update<CR>
    inoremap <C-s> <C-O>:update<CR>
    
    nnoremap <silent> <F9> :TagbarToggle<CR>
    
    " airline-tabline mapping {
    "nnoremap <Leader>1 <Plug>AirlineSelectTab1
    "nnoremap <Leader>2 <Plug>AirlineSelectTab2
    "nnoremap <Leader>3 <Plug>AirlineSelectTab3
    "nnoremap <Leader>4 <Plug>AirlineSelectTab4
    "nnoremap <Leader>5 <Plug>AirlineSelectTab5
    "nnoremap <Leader>6 <Plug>AirlineSelectTab6
    "nnoremap <Leader>7 <Plug>AirlineSelectTab7
    "nnoremap <Leader>8 <Plug>AirlineSelectTab8
    "nnoremap <Leader>9 <Plug>AirlineSelectTab9
    "nnoremap <Leader>- <Plug>AirlineSelectPrevTab
    "nnoremap <Leader>+ <Plug>AirlineSelectNextTab
    
    
    " }
    " YCM mappings {
    nnoremap <Leader>jd :YcmCompleter GoTo<CR>
    nnoremap <Leader>jr :YcmCompleter GoToReferences<CR>
    " }}

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
autocmd BufWinEnter * set number
autocmd BufWinEnter * set relativenumber


