return require("packer").startup(function(use)
	--Packer
	use("wbthomason/packer.nvim")

	--Mason
	use({ "williamboman/mason.nvim", run = ":MasonUpdate" })

	--ColorScheme
	use("rebelot/kanagawa.nvim")
	use("folke/tokyonight.nvim")
	use({ "catppuccin/nvim", as = "catppuccin" })
	use({ "rose-pine/neovim", name = "rose-pine" })

	--42
	use("42Paris/42header")
	use({
		"vinicius507/norme.nvim",
		requires = { "jose-elias-alvarez/null-ls.nvim" },
	})

	--TreeSitter
	use("nvim-treesitter/nvim-treesitter")
	use("nvim-treesitter/nvim-treesitter-context")

	--Telescope
	use({ "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/plenary.nvim" } } })

	--GitHub
	use("tpope/vim-fugitive")
end)
