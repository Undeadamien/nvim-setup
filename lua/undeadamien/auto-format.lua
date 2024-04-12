local formatters = {
	c = "clang-format -i --style='google' %",
	cmake = "cmake-format % -i",
	cpp = "clang-format -i --style='google' %",
	css = "prettier % --write",
	h = "clang-format -i --style='google' %",
	hpp = "clang-format -i --style='google' %",
	html = "prettier % --write --print-width 120",
	javascript = "prettier % --write --quote-props consistent",
	json = "prettier % --write --quote-props consistent",
	lua = "stylua %",
	markdown = "prettier % --write --quote-props consistent",
	python = "isort % && black %",
	sh = "shfmt --write %",
	typescript = "prettier % --write --quote-props consistent --tab-width 4",
}

local function format_file()
	local filetype = vim.bo.filetype
	local formatter = formatters[filetype]
	if formatter then
		local command = "silent !" .. formatter
		vim.cmd(command)
	end
end

vim.api.nvim_create_autocmd({ "BufWritePost" }, { callback = format_file })
