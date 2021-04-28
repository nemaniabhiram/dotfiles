require('plugins')

vim.cmd[[colorscheme nord]]
vim.o.showmode             = false
vim.o.showtabline          = 2
vim.wo.cursorline          = true
vim.wo.number              = true
vim.wo.relativenumber      = true
vim.o.splitbelow           = true
vim.o.splitright           = true
--vim.bo.smartindent       = true
--vim.cmd('set colorcolumn = 99999')
vim.o.ignorecase           = true
vim.o.smartcase            = true
vim.o.termguicolors        = true

vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent=true})
vim.g.mapleader = " "

-- Dashboard
vim.g.dashboard_custom_header = {
'███╗░░██╗███████╗░█████╗░██╗░░░██╗██╗███╗░░░███╗',
'████╗░██║██╔════╝██╔══██╗██║░░░██║██║████╗░████║',
'██╔██╗██║█████╗░░██║░░██║╚██╗░██╔╝██║██╔████╔██║',
'██║╚████║██╔══╝░░██║░░██║░╚████╔╝░██║██║╚██╔╝██║',
'██║░╚███║███████╗╚█████╔╝░░╚██╔╝░░██║██║░╚═╝░██║',
'╚═╝░░╚══╝╚══════╝░╚════╝░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝'
}

vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_section = {
    a = {description = {'  Recently opened files                SPC f h'}, command = 'DashboardFindHistory'},
    b = {description = {'  Find File                            SPC f f'}, command = 'DashboardFindFile'},
    c = {description = {'  Find Word                            SPC f w'}, command = 'DashboardFindWord'},
    d = {description = {'  Load Last Session                    SPC s l'}, command = 'SessionSave'},
    e = {description = {'  New file                             SPC c n'}, command = 'DashboardNewFile'},
    -- e = {description = {'  Settings'}, command = ':e ~/.config/nvim/init.lua'}
}

vim.api.nvim_set_keymap('n', '<Leader>fh', ':DashboardFindHistory<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>ff', ':DashboardFindFile<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fw', ':DashboardFindWord<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>cn', ':DashboardNewFile<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>ss', ':SessionSave<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>sl', ':SessionLoad<CR>', {noremap = true})

--[[ require'colorizer'.setup(
  {'*';},
  {
    RRGGBB   = true;
  }) ]]
