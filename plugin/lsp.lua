local lsp = require("lsp-zero")
local cmp = require("cmp")
lsp.preset("recommended")

lsp.setup_nvim_cmp({
	mapping = lsp.defaults.cmp_mappings({
		["<C-n>"] = function()
			if not cmp.visible() then
				cmp.complete()
			else
				cmp.select_next_item()
			end
		end,
		["<C-p>"] = function()
			if not cmp.visible() then
				cmp.complete()
			else
				cmp.select_prev_item()
			end
		end,
		["<Tab>"] = vim.NIL,
		["<S-Tab>"] = vim.NIL,
	}),
	completion = { autocomplete = false },
})

vim.diagnostic.config({
	virtual_text = true,
	signs = false,
})

lsp.setup()
