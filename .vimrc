syntax on

set number
set nobackup

set fileencodings=utf-8,cp932

set backspace=indent,eol,start

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smartindent

set incsearch

"==========================================
"keymapping
"==========================================
" <Space>. で .vimrc を開く
nnoremap <Space>. :<C-u>edit $MYVIMRC<Enter> 
" <Space>s. で .vimrc を読み込む
nnoremap <Space>s. :<C-u>source $MYVIMRC<Enter>

