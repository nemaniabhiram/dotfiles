" Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'mcchrish/nnn.vim'
Plug 'junegunn/goyo.vim'
Plug 'mhinz/vim-startify'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color'
Plug 'ryanoasis/vim-devicons'
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf.vim'
Plug 'arcticicestudio/nord-vim'
call plug#end()

" General Settings
set number relativenumber
set clipboard=unnamedplus
set fillchars+=vert:\ 
colorscheme nord

" Mappings
let mapleader =" "
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

" Goyo
function! s:goyo_enter()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  endif
  set noshowmode
  set noshowcmd
  set scrolloff=999
  set number relativenumber
  endfunction
autocmd! User GoyoEnter nested call <SID>goyo_enter()

" nnn
let g:nnn#layout        = { 'right': '~20%' }
