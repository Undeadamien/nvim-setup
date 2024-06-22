local function format_file()
	vim.api.nvim_command("silent w | silent !python3 -m c_formatter_42 < % %")
end

local function create_header()
	vim.api.nvim_command("silent Stdheader")
end

vim.api.nvim_create_autocmd({ "BufWritePost" }, { pattern = {"*.h", "*.c"}, callback = format_file })
vim.api.nvim_create_autocmd({ "BufEnter" }, {  pattern = {"*.h", "*.c"}, callback = create_header })
