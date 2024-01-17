math.randomseed(os.time())
local colors = { "kanagawa-dragon", "kanagawa" }

local selectedColorScheme = colors[math.random(#colors)]
vim.cmd("colorscheme " .. selectedColorScheme)
