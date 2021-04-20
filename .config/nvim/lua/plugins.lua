vim.cmd "autocmd BufWritePost plugins.lua PackerCompile" -- Auto compile when there are changes in plugins.lua

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'junegunn/goyo.vim'
  use 'glepnir/dashboard-nvim'
  use 'itchyny/lightline.vim'
  use 'ap/vim-css-color'
  use 'norcalli/nvim-colorizer.lua'
  use 'godlygeek/tabular'
  use 'junegunn/fzf.vim'
  use 'liuchengxu/vim-clap'
  use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}} }
  use 'arcticicestudio/nord-vim'
  use 'rakr/vim-one'
  use 'liuchengxu/vim-which-key'
  use 'kevinhwang91/rnvimr'
end)

