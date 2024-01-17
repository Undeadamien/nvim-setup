local context = require("treesitter-context")

vim.keymap.set("n", "<leader>c", function()
	context.go_to_context()
end, { silent = true })
