local api = require "nvim-tree.api"
local function opts(desc)
	return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
end
require("nvim-tree").setup()
vim.keymap.set('n', 'tf',     api.tree.toggle,     opts('Toggle'))
