vim.api.nvim_create_autocmd({ "BufRead" }, {
	callback = function()
		if vim.fn.expand("%:t") == "Session.vim" then
			vim.defer_fn(function()
				vim.cmd("silent source %")
			end, 0)
		end
	end,
})
