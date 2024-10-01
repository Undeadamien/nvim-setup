math.randomseed(os.time())
local colors = {
	"kanagawa-dragon",
	"lackluster-hack",
	"lackluster-mint",
	"lackluster-night",
	"poimandres",
	"rose-pine",
	"tokyonight-night",
}

local previous_scheme = nil

local function LinkColor()
	local hl = vim.api.nvim_get_hl_by_name("CursorLine", true)
	vim.api.nvim_set_hl(0, "CursorColumn", hl)

	local normal_hl = vim.api.nvim_get_hl_by_name("Normal", true)
	vim.api.nvim_set_hl(0, "NormalNC", normal_hl)
end

local function NewColorScheme()
	local scheme
	repeat
		scheme = colors[math.random(#colors)]
	until scheme ~= previous_scheme
	previous_scheme = scheme
	vim.cmd("colorscheme " .. scheme)
end

vim.api.nvim_create_autocmd({ "ColorScheme" }, {
	callback = function()
		LinkColor()
	end,
})

vim.api.nvim_create_user_command("NewColorScheme", NewColorScheme, {})

NewColorScheme()
