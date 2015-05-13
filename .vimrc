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
