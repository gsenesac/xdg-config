return {

  {
    "rebelot/kanagawa.nvim",
    config = function() 
        require('kanagawa').setup({
            compile = false,             -- enable compiling the colorscheme
            undercurl = true,            -- enable undercurls
            commentStyle = { italic = true },
            functionStyle = {},
            keywordStyle = { italic = true},
            statementStyle = { bold = true },
            typeStyle = {},
            transparent = false,         -- do not set background color
            dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
            terminalColors = true,       -- define vim.g.terminal_color_{0,17}
            colors = {                   -- add/modify theme and palette colors
                palette = {},
                theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
            },
            overrides = function(colors) -- add/modify highlights
                return {}
            end,
            theme = "wave",              -- Load "wave" theme when 'background' option is not set
            background = {               -- map the value of 'background' option to a theme
                dark = "wave",           -- try "dragon" !
                light = "lotus"
            },
        })
    end
  },
  {
    "navarasu/onedark.nvim",
    config = function()
        require('onedark').setup {
            -- Default theme style is dark. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
            style = 'darker'
        }
        require('onedark').load()
    end
  },
  {
    "Shatur/neovim-ayu",
    config = function()
        require('ayu').setup({
            mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
            terminal = true, -- Set to `false` to let terminal manage its own colors.
            overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
        })
    end
  }

}