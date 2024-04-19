local function format_file()
	local filetype = vim.bo.filetype
	if filetype=="c" then
		vim.api.nvim_command("Stdheader")   
		local command = "silent w | !c_formatter_42 < % %"
	end
end
local function create_header()
	local filetype = vim.bo.filetype
	if filetype=="c" then
	    vim.api.nvim_command("Stdheader")   
	end
end
vim.api.nvim_create_autocmd({ "BufAdd" }, { callback = create_header })
vim.api.nvim_create_autocmd({ "BufWritePost" }, { callback = format_file })
