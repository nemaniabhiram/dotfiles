" Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'glepnir/dashboard-nvim'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'godlygeek/tabular'

Plug 'junegunn/fzf.vim'

Plug 'liuchengxu/vim-clap'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'arcticicestudio/nord-vim'
Plug 'liuchengxu/vim-which-key'
Plug 'kevinhwang91/rnvimr'
call plug#end()

" General Settings
set number relativenumber
set clipboard=unnamedplus
set fillchars+=vert:\ 
set noswapfile
colorscheme nord
set mouse=a
set showtabline=2

set guifont=UbuntuMono\ Nerd\ Font:h15

" Mappings
let g:mapleader = "\<Space>"
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
:imap ii <Esc>
map <leader>f :Goyo<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Lightline
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

" Dashboard
let g:dashboard_default_executive ='telescope'
"let g:dashboard_default_executive ='clap'
"let g:dashboard_default_executive ='fzf'
let g:dashboard_disable_statusline = 1
autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2
