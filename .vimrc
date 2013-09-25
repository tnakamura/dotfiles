if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
"  NeoBundleFetch 'Shougo/neobundle.vim'

syntax on
filetype on
filetype plugin indent on   " Required!

NeoBundleCheck

set autoindent
set expandtab
set number
set nobackup
set backspace=indent,eol,start
set tabstop=2
set softtabstop=2
set shiftwidth=2

