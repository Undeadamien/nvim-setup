return require("packer").startup(function(use)
	--Packer
	use("wbthomason/packer.nvim")

	--Mason
	use({ "williamboman/mason.nvim", run = ":MasonUpdate" })

	--ColorScheme
	use("rebelot/kanagawa.nvim")
	use("folke/tokyonight.nvim")
       use { "catppuccin/nvim", as = "catppuccin" }
       use { "rose-pine/neovim", name = "rose-pine" }

	--TreeSitter
	use("nvim-treesitter/nvim-treesitter")
	use("nvim-treesitter/nvim-treesitter-context")

	--Telescope
	use({ "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/plenary.nvim" } } })

	--Lsp
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v1.x",
		requires = {
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "L3MON4D3/LuaSnip" },
			{ "hrsh7th/cmp-path" },
			{ "hrsh7th/cmp-buffer" },
		},
	})

	--GitHub
	use("tpope/vim-fugitive")
end)
