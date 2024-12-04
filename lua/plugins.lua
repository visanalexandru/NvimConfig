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
	use {
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup {}
		end
	}
	use "folke/tokyonight.nvim"
	use "sindrets/diffview.nvim" 
	use 'nvim-tree/nvim-web-devicons'
	use "nvim-treesitter/nvim-treesitter"
	use "nvim-treesitter/nvim-treesitter-context"
	use "RRethy/vim-illuminate"
	use 'tomasky/bookmarks.nvim'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhuarb'
end


return require('packer').startup(plugins)
