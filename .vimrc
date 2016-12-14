set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin()
Plug 'gmarik/Vundle.vim'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'tomasr/molokai'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar' " Requires http://ctags.sourceforge.net/
Plug 'tpope/vim-surround'
Plug 'sjl/gundo.vim'
Plug 'fatih/vim-go'
Plug 'derekwyatt/vim-scala'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-scripts/vim-auto-save'
Plug 'bronson/vim-trailing-whitespace'
Plug 'jlanzarotta/bufexplorer'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mustache/vim-mustache-handlebars'
Plug 'keith/swift.vim'
"""""""""""""""""""""""COLOURS""""""""""""""""""""""""""""""""""
Plug 'snowcrshd/cyberpunk.vim'
Plug 'jdsimcoe/basal.vim'
Plug 'euclio/vim-nocturne'
Plug 'encody/vim-colors'
Plug 'aliou/moriarty.vim'

call plug#end()            " required
filetype plugin indent on    " required

colorscheme basal


"""""""""""""""""""""""SETTINGS""""""""""""""""""""""""""""""""""


let g:jsx_ext_required = 0
set t_Co=256

syntax enable
set ttimeoutlen=50
set tabstop=2
set shiftwidth=2
set expandtab
set number
set cursorline
set laststatus=2
let g:airline_powerline_fonts = 1
set updatetime=250
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
" Autosave
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode

"""""""""""""""""""""""""KEY BINDINGS""""""""""""""""""""""""""""""

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<S-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let mapleader="\\"
noremap <silent> <Leader>nt :NERDTreeToggle<CR>
noremap <silent> <Leader>fnt :NERDTreeFind<CR>
noremap <silent> <Leader>p :FZF<CR>
noremap <silent> <Leader>t :TagbarToggle<CR>
noremap <silent> <Leader>u :GundoToggle<CR>
noremap <silent> <C-U> :tabp<CR>
noremap <silent> <C-D> :tabn<CR>
noremap <silent> <leader>f :Ack<CR>
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
noremap <C-H> <C-W><C-H>
noremap <Leader>cf :let @+= expand("%")<CR>
vnoremap <C-F> y<ESC>/<c-r>"<CR>

"""""""""""""""""""""""""SEARCH"""""""""""""""""""""""""""""
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

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
