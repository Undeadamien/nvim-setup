vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	pattern = { "*.h", "*.c" },
	callback = function()
		vim.api.nvim_command("silent !python3 -m c_formatter_42 < % %")
	end,
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	pattern = { "*.lua" },
	callback = function()
		vim.api.nvim_command("silent !stylua %")
	end,
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	pattern = { "*.sh" },
	callback = function()
		vim.api.nvim_command("silent !shfmt --write %")
	end,
})

vim.api.nvim_create_autocmd({ "BufEnter" }, {
	pattern = { "*.h", "*.c" },
	callback = function()
		vim.api.nvim_command("silent Stdheader")
	end,
})
