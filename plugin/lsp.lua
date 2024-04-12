local lsp_zero = require("lsp-zero")
local lspconfig = require("lspconfig")

lsp_zero.preset("recommended")
lsp_zero.setup()

vim.diagnostic.config({
	virtual_text = true,
	signs = false,
})
