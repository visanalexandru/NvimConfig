vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.swapfile = false
vim.opt.number = true
vim.opt.completeopt = 'menuone,popup'
vim.opt.diffopt:append { 'algorithm:patience' }


vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('plugins')
require('tokyonight').setup()
require('nvim-autopairs').setup() 
require('config.gitsigns-config')
require('config.nvim-tree-config')
require('config.nvim-lspconfig-config')

vim.cmd[[colorscheme tokyonight]]

