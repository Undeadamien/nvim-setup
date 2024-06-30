--Leader
vim.g.mapleader = " "

--Source
vim.keymap.set("n", "<leader><leader>", "<silent>:so<Enter>")

--Linux
vim.keymap.set("n", "<leader>ds", ":cd ~/.config/nvim<Enter>:Ex ~/.config/nvim<Enter>")
vim.keymap.set("n", "<leader>dc", ":cd ~/Code<Enter>:Ex ~/Code <Enter>")
vim.keymap.set("n", "<leader>dh", ":cd ~<Enter>:Ex ~<Enter>")

--Copy and Paste
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+yg_')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("n", "<leader>P", '"+P')
vim.keymap.set("v", "<leader>p", '"+p')
vim.keymap.set("v", "<leader>P", '"+P')

--Norminette
vim.keymap.set("n", "<leader>n", ":!norminette src/ -R CheckDefine | grep -v OK<CR>")
