vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true


vim.opt.undofile = true

vim.opt.smartindent = true


vim.opt.termguicolors = true

vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

vim.opt.list = true

vim.opt.scrolloff = 10
vim.opt.updatetime = 250

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Other search options
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
