return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
        config = function()
            require('telescope').setup()

            local builtin = require('telescope.builtin')

            vim.keymap.set( "n", "<leader>ps", function() 
                builtin.grep_string({ search = vim.fn.input("grep > ") });
            end)


            ---- See `:help telescope.builtin`
            --local builtin = require 'telescope.builtin'
            --vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
            --vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
            --vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
            --vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
            --vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
            --vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
            --vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
            --vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
            --vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
            --vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' }))
            --
            -- Shortcut for searching your Neovim configuration files
            vim.keymap.set('n', '<leader>sn', function()
                builtin.find_files { cwd = vim.fn.stdpath 'config' }
            end, { desc = '[S]earch [N]eovim files' })

            vim.keymap.set( 'n', '<leader>ff', builtin.find_files, {})
            vim.keymap.set( 'n', '<leader>fg', builtin.live_grep, {})
            vim.keymap.set( 'n', '<leader>fb', builtin.buffers, {})
            vim.keymap.set( 'n', '<leader>fh', builtin.help_tags, {})
            vim.keymap.set( 'n', '<leader>ft', builtin.git_files, {})
            vim.keymap.set( 'n', '<leader>fs', builtin.grep_string, {} )
            --vim.keymap.set( 'n', '<leader>fs', function()
            --    builtin.grep_string({ search = vim.fn.expand("<cword>")})
            --end, {} )

        end
    }

}
