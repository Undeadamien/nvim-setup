local function format_file()
	local filetype = vim.bo.filetype
	if filetype == "c" or filetype == "h" then
		vim.api.nvim_command("silent w | silent !c_formatter_42 < % %")
	end
end
vim.api.nvim_create_autocmd({ "BufWritePost" }, { callback = format_file })
