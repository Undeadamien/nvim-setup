math.randomseed(os.time())
local colors = {
	"kanagawa-dragon",
	"kanagawa",
	"tokyonight-night",
	"tokyonight-storm",
	"tokyonight-moon",
}

local selectedColorScheme = colors[math.random(#colors)]
vim.cmd("colorscheme " .. selectedColorScheme)
