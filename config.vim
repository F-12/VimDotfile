" Plugin Install {

" Vundle begin {
" set the runtime path to include Vundle and initialize
set rtp+=$XDG_CONFIG_HOME/vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin($XDG_CONFIG_HOME . "/vim/bundle")
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
Plugin 'sickill/vim-monokai'
Plugin 'dracula/vim'

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
" considering using neomake instead
"Plugin 'vim-syntastic/syntastic'
Plugin 'neomake/neomake'
Plugin 'majutsushi/tagbar'
Plugin 'ternjs/tern_for_vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/emmet-vim'
Plugin 'ashisha/image.vim'
Plugin 'darthmall/vim-vue'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'mhinz/vim-rfc'
Plugin 'cohama/lexima.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
"Plugin 'Shougo/denite.nvim'
"Plugin 'Shougo/unite.vim'
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
" }

" Plugins Configurations {
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

" vim-airline {
let g:airline_powerline_fonts = 1
let g:airline_left_sep = "\uE0C6"
let g:airline_right_sep = "\uE0C7"
" set the CN (column number) symbol:
let g:airline_section_z = airline#section#create(['%{line(".")}' . "," . '%{col(".")}' . "/" . '%{line("$")}'])
let g:airline_theme = 'powerlineish'

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
let g:airline#extensions#neomake#enabled = 1

" }

" set ctrlp
let g:ctrlp_cmd = 'CtrlPLastMode'         " set ctrlp use last search mode
let g:ctrlp_map = '<C-p>'                 " set ctrlp key map
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['pom.xml', '.p4ignore', 'package.json', '.git', '.hg']
let g:ctrlp_use_caching = 1
let g:ctrlp_open_multiple_files = 'ij'
let g:ctrlp_extensions = ['buffertag', 'tag', 'quickfix', 'dir']
"set grepprg="ag\ --nogroup\ --nocolor"
let g:ctrlp_user_command = 'ag %s -l --nocolor -f -g ""'

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

" set gist-vim
let g:gist_post_private = 1
let g:gist_list_vsplit = 1

" NERDTree setting {
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber
" }

" emmet setting {
let s:emmet_settings = {
      \    'html': {
      \        'default_attributes': {
      \            'a': {'href': ''},
      \            'button': {'type': 'button'},
      \            'img': {'src': ''},
      \            'link': {'href': ''},
      \            'ins': {'datetime': '${datetime}'},
      \            'iframe': [{'src': ''}, {'frameborder': '0'}],
      \            'textarea': [{'name': ''}, {'id': ''}, {'cols': '30'}, {'rows': '10'}],
      \        },
      \    },
      \}
" }

" CtrlSF setting {
let g:ctrlsf_winsize = '30%'
let g:ctrlsf_position = 'right'
let g:ctrlsf_auto_close = 0
" }

" neomake setting {
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_error_sign = {'text': '☞', 'texthl': 'NeomakeErrorSign'}
let g:neomake_warning_sign = {'text': '⚩', 'texthl': 'NeomakeWarningSign'}
let g:neomake_info_sign = {'text': '➣', 'texthl': 'NeomakeInfoSign'}
let g:neomake_message_sign = {'text': '☉', 'texthl': 'NeomakeMessageSign'}
"autocmd FileType javascript :call NeomakeESlintChecker()
autocmd! BufWritePost,BufReadPost * Neomake
" }
"
" vim-session setting {
let g:session_directory = $XDG_DATA_HOME . "/nvim/session"
let g:session_autoload = 'no'
let g:session_autosave = 'no'
let g:session_persist_font = 0
" }
" }
" Mapping {
let mapleader=','
let maplocalleader='_'

" Basic Mapping {
inoremap jk <Esc>
inoremap <C-x> <Esc>ddi
nnoremap <Leader>b :buffers<CR>:buffer<Space>
nnoremap <Leader>vh :vertical :help<Space>
nnoremap <Leader>ln :lnext<CR>
nnoremap <Leader>lp :lprev<CR>
nnoremap <Leader>lo :lopen<CR>
nnoremap <Leader>lc :lclose<CR>
" }

" Navigate Mapping {
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
inoremap <A-h> <Esc><C-w>h
inoremap <A-j> <Esc><C-w>j
inoremap <A-k> <Esc><C-w>k
inoremap <A-l> <Esc><C-w>l
" }
" NERDTree Mapping {
noremap <C-\> :NERDTreeToggle<CR>
"}

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

" Unite mappings {
"nnoremap <Leader>f :<C-u>Unite -start-insert file<CR>
"nnoremap <Leader>r :<C-u>Unite -start-insert file_rec/async:!<CR>
" }
"
" vim-session mappings {
nnoremap <Leader>sos :OpenSession<CR>
nnoremap <Leader>sss :SaveSession<CR>
"}
"
" CtrlSF mappings {
nnoremap <Leader>f :CtrlSF<Space>
" }
" }
" }
"
" autocmd {
autocmd BufNewFile,BufRead *.we set filetype=vue
" }
