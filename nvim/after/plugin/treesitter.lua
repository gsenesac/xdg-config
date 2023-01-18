require 'nvim-treesitter.configs'.setup {
    -- list of parser names
    ensure_installed = { "help", "c", "lua", "python", "org" },

    -- Install parsers synchronously
    sync_install = false,

    auto_install = true,

    highlight = {
        -- false here disables the whole extension
        enable = true,

        additional_vim_regex_highlighting = false,
    },
}
    
