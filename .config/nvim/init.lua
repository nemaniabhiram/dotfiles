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
vim.g.mapleader = " "

vim.o.guifont = "SauceCodePro Nerd Font:h13"

-- Dashboard
vim.g.dashboard_custom_header = {
'███╗░░██╗███████╗░█████╗░██╗░░░██╗██╗███╗░░░███╗',
'████╗░██║██╔════╝██╔══██╗██║░░░██║██║████╗░████║',
'██╔██╗██║█████╗░░██║░░██║╚██╗░██╔╝██║██╔████╔██║',
'██║╚████║██╔══╝░░██║░░██║░╚████╔╝░██║██║╚██╔╝██║',
'██║░╚███║███████╗╚█████╔╝░░╚██╔╝░░██║██║░╚═╝░██║',
'╚═╝░░╚══╝╚══════╝░╚════╝░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝'
}

vim.g.dashboard_custom_section = {
    a = {description = {'  Recently opened files                SPC f h'}, command = 'Telescope oldfiles'},
    b = {description = {'  Find File                            SPC f f'}, command = 'Telescope find_files'},
    c = {description = {'  Find Word                            SPC f w'}, command = 'Telescope live_grep'},
    d = {description = {'  Load Last Session                    SPC s l'}, command = 'SessionLoad'},
    -- e = {description = {'  Settings'}, command = ':e ~/.config/nvim/init.lua'}
}

--[[ require'colorizer'.setup(
  {'*';},
  {
    RRGGBB   = true;
  }) ]]
