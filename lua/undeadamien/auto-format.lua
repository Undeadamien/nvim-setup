format_file = function()
	--Shfmt
	if vim.bo.filetype == "sh" then
		vim.cmd("silent :!shfmt --write %")

	--Python
	elseif vim.bo.filetype == "python" then
		vim.cmd("silent :!isort %")
		vim.cmd("silent :!black %")

	--Clang
	elseif vim.bo.filetype == "cpp" then
		vim.cmd("silent :!clang-format -i --style=google %")
	elseif vim.bo.filetype == "c" then
		vim.cmd("silent :!clang-format -i --style=google %")

	--Prettier
	elseif vim.bo.filetype == "javascript" then
		vim.cmd("silent :!prettier % --write --quote-props consistent")
	elseif vim.bo.filetype == "typescript" then
		vim.cmd("silent :!prettier % --write --quote-props consistent --tab-width 4")
	elseif vim.bo.filetype == "html" then
		vim.cmd("silent :!prettier % --write --print-width 120")
	elseif vim.bo.filetype == "css" then
		vim.cmd("silent :!prettier % --write")
	elseif vim.bo.filetype == "json" then
		vim.cmd("silent :!prettier % --write --quote-props consistent")
	elseif vim.bo.filetype == "markdown" then
		vim.cmd("silent :!prettier % --write --quote-props consistent")

	--Stylua
	elseif vim.bo.filetype == "lua" then
		vim.cmd("silent :!stylua %")
	end
end

vim.api.nvim_create_autocmd({ "BufWritePost" }, { callback = format_file })
