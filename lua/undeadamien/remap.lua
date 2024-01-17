--Leader
vim.g.mapleader = " "

--Linux
vim.keymap.set("n", "<leader>ds", ":Ex ~/.config/nvim <Enter>")
vim.keymap.set("n", "<leader>dc", ":Ex ~/Code <Enter>")

--Copy and Paste
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+yg_')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("n", "<leader>P", '"+P')
vim.keymap.set("v", "<leader>p", '"+p')
vim.keymap.set("v", "<leader>P", '"+P')
