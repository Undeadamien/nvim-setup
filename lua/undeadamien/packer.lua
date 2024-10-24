return require("packer").startup(function(use)
	--Packer
	use("wbthomason/packer.nvim")

	--Mason
	use({ "williamboman/mason.nvim", run = ":MasonUpdate" })

	--ColorScheme
	use("rebelot/kanagawa.nvim")
	use("folke/tokyonight.nvim")
	use("olivercederborg/poimandres.nvim")
	use({ "rose-pine/neovim", name = "rose-pine" })
	use("slugbyte/lackluster.nvim")

	--TreeSitter
	use("nvim-treesitter/nvim-treesitter")
	use("nvim-treesitter/nvim-treesitter-context")

	--ZenMode
	use("folke/zen-mode.nvim")

	--LuaLine
	use({ "nvim-lualine/lualine.nvim", requires = { "nvim-tree/nvim-web-devicons", opt = true } })

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

	--Git
	use("tpope/vim-fugitive")
	use("lewis6991/gitsigns.nvim")
end)
