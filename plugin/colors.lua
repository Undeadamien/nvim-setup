math.randomseed(os.time())
local colors = {
	"kanagawa-dragon",
	"kanagawa",
	"tokyonight-night",
	"tokyonight-storm",
	"tokyonight-moon",
}

local previous_scheme = nil

local function NewColorScheme()
	local scheme
	repeat
		scheme = colors[math.random(#colors)]
	until scheme ~= previous_scheme
	previous_scheme = scheme
	vim.cmd("colorscheme " .. scheme)
end

NewColorScheme()

vim.api.nvim_create_user_command("NewColorScheme", NewColorScheme, {})
