" Plugin Install {

let plugins = [
\ 'tpope/vim-fugitive',
\ 'ryanoasis/vim-devicons',
\ 'scrooloose/nerdtree',
\ 'Xuyuanp/nerdtree-git-plugin',
\ 'mbbill/undotree',
\ 'vim-airline/vim-airline',
\ 'vim-airline/vim-airline-themes',
\ 'NLKNguyen/papercolor-theme',
\ 'dracula/vim',
\ 'othree/yajs.vim',
\ 'ctrlpvim/ctrlp.vim',
\ 'kshenoy/vim-signature',
\ 'yegappan/grep',
\ 'mileszs/ack.vim',
\ 'dyng/ctrlsf.vim',
\ 'terryma/vim-multiple-cursors',
\ 'scrooloose/nerdcommenter',
\ 'derekwyatt/vim-protodef',
\ 'vim-scripts/nginx.vim',
\ 'tpope/vim-surround',
\ 'neomake/neomake',
\ 'majutsushi/tagbar',
\ 'ternjs/tern_for_vim',
\ 'Valloric/YouCompleteMe',
\ 'SirVer/ultisnips',
\ 'airblade/vim-gitgutter',
\ 'mattn/emmet-vim',
\ 'darthmall/vim-vue',
\ 'mattn/webapi-vim',
\ 'mattn/gist-vim',
\ 'mhinz/vim-rfc',
\ 'cohama/lexima.vim',
\ 'xolox/vim-misc',
\ 'xolox/vim-session',
\ ]

set rtp+=$HOME/.config/vim/repos/github.com/Shougo/dein.vim
if dein#load_state($HOME . "/.config/vim")
  call dein#begin($HOME . "/.config/vim")

  call dein#add($HOME . "/.config/vim/repos/github.com/Shougo/dein.vim")

  for p in plugins
    call dein#add(p)
  endfor

  call dein#end()
  call dein#save_state()
endif
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
let g:airline_inactive_collapse = 1
let g:airline_left_sep = "\uE0C6"
let g:airline_right_sep = "\uE0C7"
" set the CN (column number) symbol:
"let g:airline_section_z = airline#section#create(['%{line(".")}' . "," . '%{col(".")}' . "/" . '%{line("$")}'])
let g:airline_theme = 'powerlineish'
" set airline-tabline, see :h airline-tabline
"let g:airline_extensions = ['branch', 'tabline', 'tagbar', 'neomake']
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
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#ycm#enabled = 1
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
"let g:ycm_key_invoke_completion = '<M-Space>'
let g:ycm_auto_trigger = 1
let g:ycm_error_symbol = "\uF0A4"       " use vim-devicons
let g:ycm_warning_symbol = "\uF026"
let g:ycm_complete_in_comments = 0
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_autoclose_preview_window_after_completion = 1
" set UltiSnips
let g:UltiSnipsEditSplit = "vertical"
let g:UltiSnipsSnippetsDir = "$HOME/.config/vim/UltiSnips"
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
"
let g:deoplete#enable_at_startup = 1
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

" YCM mappings {
nnoremap <Leader>jt :YcmCompleter GoTo<CR>
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
