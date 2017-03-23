set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
" To ignore plugin indent changes, instead use:
"filetype plugin on
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
" Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ap/vim-buftabline'
Plugin 'davidhalter/jedi-vim'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'scrooloose/nerdtree'                " Project and file navigation


call vundle#end()            " required
filetype plugin indent on    " required

" =====================
" 6. MAPS AND FUNCTIONS
" =====================
" Make window navigation less painful.
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

set number
set relativenumber

syntax on
set shiftwidth=2
set tabstop=2
set autoindent
set mouse=a
set modifiable
set write
execute pathogen#infect()
let g:syntastic_python_checkers = ['flake8', 'pydocstyle', 'python']
let g:syntastic_aggregating_errors = 1
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = '--'
let g:gitgutter_sign_removed = 'zz'
let g:gitgutter_sign_removed_first_line = '^^'
let g:gitgutter_sign_modified_removed = 'ww'
" let g:jedi#force_py_version = 3
" let g:jedi#smart_auto_mappings = 0
" let g:syntastic_python_python_exec = 'python3'
" let g:pymode_python = 'python3'

" Working with buffers is cool.
set hidden
map <C-N>  :bnext<CR>
map <C-P>  :bprev<CR>
imap <C-N> <Esc>:bnext<CR>a
imap <C-P> <Esc>:bprev<CR>a

" if filereadable($VIRTUAL_ENV . '/.vimrc')
"   source $VIRTUAL_ENV/.vimrc
" endif

