math.randomseed(os.time())
local colors = {
	"kanagawa-dragon",
	"kanagawa",
	"tokyonight-night",
	"tokyonight-storm",
	"tokyonight-moon",
}

local function NewColorScheme()
	local scheme = colors[math.random(#colors)]
	vim.cmd("colorscheme " .. scheme)
end

NewColorScheme()

vim.api.nvim_create_user_command("NewColorScheme", NewColorScheme, {})
