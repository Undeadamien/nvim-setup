vim.api.nvim_create_autocmd({ "BufEnter" }, {
	callback = function()
		if vim.fn.expand("%:t") == "Session.vim" then
			vim.defer_fn(function()
				pcall(function()vim.cmd("silent source %")end)
			end, 0)
		end
	end,
})
