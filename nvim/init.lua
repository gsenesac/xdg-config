require('plugins')
require('set')
require('remap')

require 'lspconfig'.pylsp.setup{}
require 'orgmode'.setup_ts_grammar()
require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})


