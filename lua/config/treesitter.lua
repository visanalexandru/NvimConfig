require'nvim-treesitter.configs'.setup({
	ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "go" },
  	sync_install = false,
	auto_install = true,
	highlight = {
	    enable = true,
	}
})
