" spaces and tabs
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line

syntax on           " syntax highlighting 
set mouse=a         " enable basic mouse support
set number          " numbered lines
" plugins, call :PlugInstall to install
call plug#begin()
Plug 'terryma/vim-multiple-cursors' " ctrl + N
Plug 'airblade/vim-gitgutter'
Plug 'rip-rip/clang_complete'
Plug 'rhysd/vim-clang-format'
call plug#end()

if has('macunix')
  let g:clang_library_path='/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
elseif has('unix')
  let g:clang_library_path='/usr/lib/llvm-9/lib/libclang.so'
endif

