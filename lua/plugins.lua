function plugins(use)
	use "wbthomason/packer.nvim"
	use "rafamadriz/neon"
	use "shaunsingh/moonlight.nvim"
	use "kyazdani42/nvim-tree.lua"
	use "lewis6991/gitsigns.nvim"
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use "neovim/nvim-lspconfig"
	use "windwp/nvim-autopairs"
	use "folke/tokyonight.nvim"
end


return require('packer').startup(plugins)
