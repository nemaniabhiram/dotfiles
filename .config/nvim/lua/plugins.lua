vim.cmd "autocmd BufWritePost plugins.lua PackerCompile" -- Auto compile when there are changes in plugins.lua

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'glepnir/dashboard-nvim'
  use {'nvim-telescope/telescope.nvim', requires = {'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim', 'kyazdani42/nvim-web-devicons'}}
  -- use 'junegunn/goyo.vim'
  -- use 'kdav5758/TrueZen.nvim'
  -- use 'ap/vim-css-color'
  -- use 'norcalli/nvim-colorizer.lua'
  use 'godlygeek/tabular'
  use 'arcticicestudio/nord-vim'
  -- use 'liuchengxu/vim-which-key'
  use 'b3nj5m1n/kommentary'
  -- use {'romgrk/barbar.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  --[[ use {
  'glepnir/galaxyline.nvim',
    branch = 'main',
    -- your statusline
    config = function() require'my_statusline' end,
    -- some optional icons
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
} ]]
  --[[ use {
  'hoob3rt/lualine.nvim',
  requires = {'kyazdani42/nvim-web-devicons', opt = true}
} ]]
  use 'kevinhwang91/rnvimr'
end)
