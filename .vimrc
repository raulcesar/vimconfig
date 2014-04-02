"Special installation for:
"Valloric / YouCompleteMe
"marijnh / tern_for_vim
set nocompatible              " be iMproved, required
filetype off                  " required
syntax enable
let &t_Co=256
set smartindent
set shiftwidth=4
set softtabstop=4
set expandtab
set smartcase
set hlsearch
set nobackup
set incsearch
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
Plugin 'tpope/vim-fugitive'
" Plugin 'Lokaltog/vim-easymotion'
" Plugin 'tpope/vim-rails.git'
Bundle 'flazz/vim-colorschemes'
Bundle "pangloss/vim-javascript"
Bundle 'jelera/vim-javascript-syntax'
Bundle "Lokaltog/vim-distinguished"
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/syntastic'
Bundle 'Valloric/YouCompleteMe'
Bundle 'marijnh/tern_for_vim'
Bundle 'wincent/Command-T'
Bundle 'scrooloose/nerdtree'
Bundle 'amiorin/vim-project'
" This does what it says on the tin. It will check your file on open too, not
" just on save.
" " You might not want this, so just leave it out if you don't.
let g:syntastic_check_on_open=1
" let g:syntastic_javascript_jshint_conf="~/vimconfig/.jshintrc"
"
" " The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Plugin 'FuzzyFinder'
" scripts not on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line
if has("gui_running")
    colorscheme wombat
elseif &t_Co == 256
    colorscheme distinguished
endif
" autocmd vimenter * if !argc() | NERDTree | endif
" configuration for ycm plugin
let g:ycm_server_use_vim_stdout=1


let mapleader=","
imap <C-c> <CR><Esc>O
nmap <C-p> "+p
nmap <left> :NERDTreeToggle<CR>
nmap <silent><leader>h :set hlsearch !<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" for when we open without sudo, and then need to write file1!!
cmap w!! w !sudo tee % >/dev/null

" Configuration for Project plugin
let g:project_use_nerdtree = 1
set rtp+=~/.vim/bundle/vim-project/
call project#rc("~/DevProjects")

Project 'nodeLearning/restserver', 'restserver'
Project 'nodeLearning/code/web-services', 'example-rest'
Project 'Node/nodecedi', 'cedi@home'
Project '~/vimconfig'
