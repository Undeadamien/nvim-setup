vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	pattern = { "*.hpp", "*.cpp" },
	callback = function()
		vim.api.nvim_command("silent !clang-format --style=google -i %")
	end,
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	pattern = { "*.lua" },
	callback = function()
		vim.api.nvim_command("silent !stylua %")
	end,
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	pattern = { "*.sh", "*.bashrc", "*.zshrc" },
	callback = function()
		vim.api.nvim_command("silent !shfmt --write %")
	end,
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	pattern = { "*.py" },
	callback = function()
		vim.api.nvim_command("silent !isort % && black %")
	end,
})
