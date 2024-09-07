--Visual Help
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.list = true

--Tabulation
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

--Directory
vim.opt.autochdir = false

--Text
vim.opt.wrap = false

--File
vim.opt.swapfile = false
vim.opt.endofline = true

--Search
vim.opt.ic = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

--Undo
vim.opt.undodir = vim.fn.expand("~/.config/nvim/undo")
vim.opt.undofile = true
vim.opt.undolevels = 1000

--Other
vim.opt.scrolloff = 8
