local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'gmarik/Vundle.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar' -- Requires http://ctags.sourceforge.net/
Plug 'tpope/vim-surround'
Plug 'sjl/gundo.vim'
Plug 'fatih/vim-go'
Plug 'derekwyatt/vim-scala'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mileszs/ack.vim'
Plug 'mustache/vim-mustache-handlebars'
--Plug('junegunn/fzf', { [dir] = '~/.fzf', [do] = vim.fn['fzf#install'] })
Plug('junegunn/fzf', {['do'] = vim.fn['fzf#install']})
Plug 'junegunn/fzf.vim'
Plug '907th/vim-auto-save'
Plug 'udalov/kotlin-vim'
Plug 'hashivim/vim-terraform'
Plug 'Matt-Deacalion/vim-systemd-syntax'
Plug 'neovim/nvim-lspconfig'


-- main one
Plug('ms-jpq/coq_nvim', {['branch'] = 'coq'})
-- 9000+ Snippets
Plug('ms-jpq/coq.artifacts', {['branch'] = 'artifacts'})

Plug 'tyrannicaltoucan/vim-quantum'
Plug 'tomsik68/vim-crystallite'
Plug 'tomasr/molokai'
Plug 'sickill/vim-monokai'
Plug 'jpo/vim-railscasts-theme'
Plug 'bounceme/highwayman'
Plug 'jdsimcoe/basal.vim'
Plug 'gummesson/stereokai.vim'
Plug 'vim-scripts/sift'
Plug 'lanox/lanox-vim-theme'
Plug 'shaond/vim-guru'
Plug 'nanotech/jellybeans.vim'
Plug 'vim-scripts/burnttoast256'
Plug 'noahfrederick/vim-hemisu'
Plug 'changyuheng/color-scheme-holokai-for-vim'
Plug 'pkukulak/idle'
Plug 'Valloric/vim-valloric-colorscheme'
Plug 'aperezdc/vim-elrond'
Plug 'geetarista/ego.vim'
Plug 'tpope/vim-projectionist'

vim.call('plug#end')



local lsp = require "lspconfig"
local coq = require "coq"

lsp.tsserver.setup {}

if vim.fn.executable("rg") then
  vim.g.fzf_default_command = 'rg --files --hidden --glob "!.git/*"'
  vim.g.ackprg = 'rg --vimgrep'
elseif vim.fn.executable("ag") then
  vim.g.fzf_default_command = 'ag -g ""'
  vim.g.ackprg = 'ag --vimgrep'
end

-- SETTINGS
vim.g.ranger_replace_netrw = 1 -- Use ranger when vim opens a directory
vim.g.jsx_ext_required = 0
vim.cmd("set t_Co=256")

vim.cmd("syntax enable")
vim.cmd("set background=dark")
vim.cmd("set ttimeoutlen=50")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set expandtab")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set cursorline")
vim.cmd("set laststatus=2")
vim.g.airline_powerline_fonts = 1
vim.cmd("set updatetime=250")
vim.g.auto_save = 1

vim.cmd("set undofile")
vim.cmd("set undodir=~/.vim/undodir")
vim.fn.system("mkdir -p " .. vim.o.undodir)

-- My favourite colour schemes
vim.cmd("colorscheme basal")
-- Preserve terminal background
vim.cmd("highlight Normal ctermbg=none")
vim.cmd("highlight NonText ctermbg=none")

-- KEY BINDINGS
vim.g.mapleader = " "
vim.g.ranger_map_keys = 0

vim.api.nvim_set_keymap("n", "<leader>r", ":Ranger<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>f", ":FZF<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>t", ":TagbarToggle<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>u", ":GundoToggle<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<C-J>", "<C-W><C-J>", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-K>", "<C-W><C-K>", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-L>", "<C-W><C-L>", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-H>", "<C-W><C-H>", {noremap = true})
