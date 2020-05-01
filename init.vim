" spaces and tabs
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line

syntax on 
set mouse=a         " enable basic mouse support

" plugins, call :PlugInstall to install
call plug#begin()
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter'
call plug#end()


