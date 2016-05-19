set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Bash syntax
Plugin 'vim-scripts/bash-support.vim'
" JavaScript syntax highlighting
Plugin 'pangloss/vim-javascript'
" Elixir syntax highlighting
Plugin 'elixir-lang/vim-elixir'
" Gradle syntax highlighting
Plugin 'tfnico/vim-gradle'
" json syntax highlighting
Plugin 'elzr/vim-json'
" Yaml syntax highlighting
Plugin 'stephpy/vim-yaml'
" Better markdown
Plugin 'gabrielelana/vim-markdown'
" Angular support
Plugin 'burnettk/vim-angular'
" HTML 5 syntax
Plugin 'othree/html5-syntax.vim'
" HTML5 snippets
Plugin 'othree/html5.vim'
" Tree layout
Bundle 'scrooloose/nerdtree'

" Ctrl-p
Bundle 'ctrlpvim/ctrlp.vim'

" Ruby stuff
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'


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

" Behavior settings
set encoding=utf-8   " Use UTF-8 encoding
set nobackup         " Don't backup
set nowritebackup    " Write file in place
set noswapfile       " Don't use swap files (.swp)
set autoread         " Autoreload buffers
set autowrite        " Automatically save changes before switching buffers
set shell=$SHELL     " Default shell is ZSH
set showcmd          " Display incomplete commands
set visualbell       " Use visual bell instead of audible bell
set backspace=2      " Backspace works like other apps

" Tabs and spaces
set tabstop=2         " Tabs are 2 spaces
set shiftwidth=2      " 2 Spaces for << && >>
set softtabstop=2     " Tabs are 2 spaces for editing operations
set expandtab         " Always use spaces instead of tabs
set smartindent       " Auto indent
set nowrap            " Don't wrap lines



" JSON Don't hide quotes
let g:vim_json_syntax_conceal = 0



" Display settings
set number            " Show current line number
set ruler             " Show curser position
set cursorline        " Highlight current cursor line
syntax on             " Syntax Highlighting
set background=dark   " Dark background style

" Other settings
set mouse=a


" NERDTree
let NERDTreeShowHidden=1
let NERDTreeMouseMode=3
map <Leader>n :NERDTreeToggle<CR>
map <Leader>m :NERDTreeFind<CR>

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
