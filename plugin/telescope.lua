local builtin = require("telescope.builtin")
local previewers = require("telescope.previewers")
local utils = require("telescope.utils")

vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>gf", builtin.git_files, {})

vim.keymap.set("n", "<leader>ff", function()
	builtin.find_files({ cwd = utils.buffer_dir() })
end)

vim.keymap.set("n", "<leader>fg", function()
	builtin.live_grep({ cwd = utils.buffer_dir() })
end)
