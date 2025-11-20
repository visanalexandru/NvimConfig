vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.swapfile = false
vim.opt.number = true
vim.opt.hidden = false
vim.opt.completeopt = 'menuone,popup'
--vim.opt.expandtab = true
vim.opt.diffopt:append { 'algorithm:patience' }


vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.wrap = false

vim.opt.list = true -- <- change here to `true` to see them
vim.opt.listchars = { eol = "↵", tab = "→ ", nbsp = "·", space = "·", trail = "~" }

-- fugitive

require('plugins')
require('tokyonight').setup()
require('config.gitsigns')
require('config.dirtree')
require('config.lsp')
require('config.treesitter')
require('config.context')
require('config.illuminate')
require('config.telescope')

vim.cmd[[colorscheme tokyonight]]
