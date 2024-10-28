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

	--42
	use("42Paris/42header")

	--TreeSitter
	use("nvim-treesitter/nvim-treesitter")
	use("nvim-treesitter/nvim-treesitter-context")

	--ZenMode
	use("folke/zen-mode.nvim")

	--LuaLine
	use({ "nvim-lualine/lualine.nvim", requires = { "nvim-tree/nvim-web-devicons", opt = true } })

	--Telescope
	use({ "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/plenary.nvim" } } })

	--Comment
	use({ "numToStr/Comment.nvim" })

	--Lsp
	use({ "VonHeikemen/lsp-zero.nvim", branch = "v4.x" })
	use("L3MON4D3/LuaSnip")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/cmp-path")
	use("hrsh7th/nvim-cmp")
	use("neovim/nvim-lspconfig")
	use("saadparwaiz1/cmp_luasnip")
	use("williamboman/mason-lspconfig.nvim")

	--Git
	use("tpope/vim-fugitive")
	use("lewis6991/gitsigns.nvim")
end)
