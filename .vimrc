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
" Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
" Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'benmills/vimux'
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'		" Class/module browser
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ap/vim-buftabline'
Plugin 'davidhalter/jedi-vim'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'scrooloose/nerdtree'                " Project and file navigation

Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/syntastic'
Plugin 'jaredly/vim-debug'
Plugin 't9md/vim-quickhl'
call vundle#end()            " required
filetype plugin indent on    " required


" =====================
" 5. SETTING POWELINE
" =====================
" Make window navigation less painful.
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256


" =====================
" 6. MAPS AND FUNCTIONS
" =====================
" Make window navigation less painful.
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" =====================
" 7. CONF NERDTREE
" =====================
map <C-t> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"=====================================================
"" TagBar settings
"=====================================================
let g:tagbar_autofocus=0
let g:tagbar_width=35
autocmd BufEnter *.py :call tagbar#autoopen(0)
autocmd BufWinLeave *.py :TagbarClose

"=====================================================
"" Quickhl
"=====================================================
nmap <Space>m <Plug>(quickhl-manual-this)
xmap <Space>m <Plug>(quickhl-manual-this)
nmap <Space>M <Plug>(quickhl-manual-reset)
xmap <Space>M <Plug>(quickhl-manual-reset)

"=====================================================
"" TagBar folding
"=====================================================
set foldlevelstart=1
set foldmethod=indent
set nofoldenable

set number
set relativenumber

syntax on
set shiftwidth=2
set tabstop=2
set autoindent
" set mouse=a
set modifiable
set write
" execute pathogen#infect()
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_check_on_wq=0
let g:syntastic_aggregate_errors=1
let g:syntastic_loc_list_height=5
let g:syntastic_error_symbol='X'
let g:syntastic_style_error_symbol='X'
let g:syntastic_warning_symbol='x'
let g:syntastic_style_warning_symbol='x'
let g:syntastic_python_python_exec = 'python'
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
" let g:pymode_python = 'python3'

" Working with buffers is cool.
set hidden
map <C-N>  :bnext<CR>
map <C-B>  :bprev<CR>
imap <C-N> <Esc>:bnext<CR>a
imap <C-B> <Esc>:bprev<CR>a

" colorscheme new-railscasts
colorscheme monokai-chris

" if filereadable($VIRTUAL_ENV . '/.vimrc')
"   source $VIRTUAL_ENV/.vimrc
" endif
let g:VimuxHeight = "20"
let mapleader = ","
map <Leader>rb :call VimuxRunCommand("clear; rspec " . bufname("%"))<CR>
