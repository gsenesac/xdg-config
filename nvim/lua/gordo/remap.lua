vim.keymap.set("n", "<leader>pv", vim.cmd.Ex )

-- Move selected visual block up (J) and down (K)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join lines without losing your cursor position
vim.keymap.set("n", "J", "mzJ`z")

-- When moving up and down, keep cursor centered
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- When cycling through search matches, keep cursor centered
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Don't clobber paste buffer when pasting over visual selection
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Yank to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Blackhole delete
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Easier next/prev quickfix nav
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- Populate register with <current_file>:<current_lineno>
vim.keymap.set("n", "<leader>l", ":let @l = @% .. ':' .. line('.')<CR>" )

-- Send command to tmux sess/win/pane
--vim.keymap.set("n", "<leader>s", "\"syy:! tmux send-keys -t test:1.0 ' <C-r>s ' Enter<CR>", {silent = true} )
--
local options = { noremap = true, silent = true }

-- Quickly bring up neovim config dir
vim.api.nvim_set_keymap('n', '<leader>ec', ':Ex ~/.config/nvim/lua/gordo<CR>', options )

-- Reselect pasted text
-- Similar: gv is reselect last visual selection
vim.keymap.set( "n", "gp", "`[v`]", options )
