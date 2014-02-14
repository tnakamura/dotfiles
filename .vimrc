if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
"  NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle "Shougo/neocomplete.vim"
NeoBundle "scrooloose/nerdtree"
NeoBundle "mattn/emmet-vim"

syntax on
filetype on
filetype plugin indent on   " Required!

NeoBundleCheck

set smartindent
set expandtab
set number
set nobackup
set backspace=indent,eol,start
set tabstop=2
set softtabstop=2
set shiftwidth=2

"==========================================
"keymapping
"==========================================
" <Space>. で .vimrc を開く
nnoremap <Space>. :<C-u>edit $MYVIMRC<Enter> 
" <Space>s. で .vimrc を読み込む
nnoremap <Space>s. :<C-u>source $MYVIMRC<Enter>

"==========================================
"neocomplete.vim
"==========================================
"use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
      \ 'default' : '',
      \ 'vimshell' : $HOME.'/.vimshell_hist',
      \ 'scheme' : $HOME.'/.gosh_completions'
      \ }
" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
" Plugin key-mappings.
inoremap <expr><C-g>  neocomplete#undo_completion()
inoremap <expr><C-l>  neocomplete#complete_common_string()

