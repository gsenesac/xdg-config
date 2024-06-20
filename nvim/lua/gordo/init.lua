vim.g.gordo_pluginpath = "/home/gordo/tools/neovim_jan_2024/plugins/"

require("gordo.set")
require("gordo.remap")
require("gordo.lazy_init")

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

