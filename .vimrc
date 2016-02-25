set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'kien/ctrlp.vim.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'bling/vim-airline'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar' " Requires http://ctags.sourceforge.net/
Plugin 'tpope/vim-surround'
Plugin 'sjl/gundo.vim'
Plugin 'mileszs/ack.vim'

call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""SETTINGS""""""""""""""""""""""""""""""""""

set t_Co=256

syntax enable
set ttimeoutlen=50
set tabstop=4
set shiftwidth=4
set expandtab
set number
set cursorline
set laststatus=2
let g:airline_powerline_fonts = 1

"""""""""""""""""""""""""KEY BINDINGS""""""""""""""""""""""""""""""
let mapleader="\\"
noremap <silent> <Leader>nt :NERDTreeToggle<CR>
noremap <silent> <Leader>p :CtrlP<CR>
noremap <silent> <Leader>t :TagbarToggle<CR>
noremap <silent> <Leader>u :GundoToggle<CR>


"""""""""""""""""""""" AUTO COMMANDS """"""""""""""""""""""""""""

autocmd InsertLeave * :GitGutterAll

"""""""""""""""""" TAGS """""""""""""""""""""""""
" GROOVY
let g:tagbar_type_groovy = {
    \ 'ctagstype' : 'groovy',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'c:class',
        \ 'i:interface',
        \ 'f:function',
        \ 'v:variables',
    \ ]
\ }
