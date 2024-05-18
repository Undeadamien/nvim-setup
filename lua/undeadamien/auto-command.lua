vim.api.nvim_create_autocmd({ "BufEnter" }, {
	callback = function()
		if vim.fn.expand("%:t") == "Session.vim" then
			vim.cmd("source %")
		end
	end,
})
