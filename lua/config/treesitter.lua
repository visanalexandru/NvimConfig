require'nvim-treesitter'.setup {
  -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
  install_dir = vim.fn.stdpath('data') .. '/site'
}

vim.api.nvim_create_autocmd('FileType', {
  callback = function() vim.treesitter.start() end,
})
