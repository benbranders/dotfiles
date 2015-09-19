"
" .vimrc: A fully customized and annotated .vimrc file
" Ben Branders
"
" Resources:
"   * dougblack.io/words/a-good-vimrc.html 
"   
" Plugin management {{{
set nocompatible
filetype off

" Vundle
set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My plug-ins
Plugin 'wincent/command-t'
set wildignore+=*.epub,*.jpg
Plugin 'plasticboy/vim-markdown'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'bling/vim-airline'

" Snippet management: Ultisnips
Bundle 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Bundle 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" }}}
" Colors {{{
colorscheme solarized
let g:solarized_contrast="high"    "default value is normal
let g:solarized_visibility="high"    "default value is normal
set background=dark
syntax on
" }}}
" Spaces and tabs {{{
set autoindent	" Auto-indent new lines
set shiftwidth=4 " auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
set expandtab           " Save tabs as spaces
set textwidth=0	" Line wrap (number of cols)
" }}}
" UI config {{{
set number	" show line numbers
set relativenumber " use relative numbers
set linebreak   " break lines at word
set wrap
set nolist
set visualbell	" Use visual bell (no beeping)
set cursorline  " Visible line at current cursor line
set ruler	" Show row and column ruler information
set showtabline=2	" Show tab bar
set laststatus=2        " Always display the status line, even if only one window is displayed
set cmdheight=2         " Set command window height to 2 lines
set wildmode=longest,list,full  " tab completion
set wildmenu            " better command line completion
set showcmd             " Show partial commands in last line of the screen

" Highlight cursor in Vim
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:block-Cursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

" Hide unnecessary elements from interface
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set showtabline=0  "remove tab bar

set lines=50 columns=100
" }}}
" Searching {{{
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
" }}}
" Folding {{{
set foldenable " enable folding
set foldlevelstart=10 " open most folds by default
set foldnestmax=10 " 10 nested fold max
nnoremap <space> za
" }}}
" Misc {{{
set nocompatible        " be iMproved, required
set confirm     " aks for confirmation Y/N instead of cancelling out
set nostartofline " Stop certain movements from going to first character of a line.
set showmatch	" Highlight matching brace
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour
set noswapfile          " Don't keep swp-files
set listchars=tab:▸\ ,eol:¬,trail:·
set spelllang=nl_NL " Use Dutch dictionary
set nospell " use spelling dictionary
" }}}
" File handling {{{
set encoding=utf-8
setglobal fileencoding=utf-8
set nobomb
set termencoding=utf-8
set fileencodings=utf-8,iso-8859-15
" }}}
" Plug-in: CtrlP {{{
let g:ctrlp_map = '<c-p>' " Change default mapping to C-p
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra' " set working directory
" }}}
" Mappings and abbreviations {{{
inoremap jj <ESC>  " Remap ESC to jk
nmap w <C-W> " Remap CTRL+W to W for faster window switching

" Faster mapleader
let mapleader = ","
let g:mapleader = ","

map Y y$                " Map Y to act like D and C

" Reformat current paragraph
nnoremap Q gqip

" Fast saving
nmap <leader>w :w!<cr>

" Fast opening of .vimrc
map <leader>r :e ~/.vimrc<CR>

" Abbreviations
iab <expr> ymd strftime("%Y%m%d")
iab <expr> dts strftime("%FT%T%z")
iab <expr> hms strftime("%H:%M:%S")

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" }}}

" vim:foldmethod=marker:foldlevel=0
