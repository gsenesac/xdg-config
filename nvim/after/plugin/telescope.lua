local builtin = require('telescope.builtin')

vim.keymap.set( "n", "<leader>ps", function() 
    builtin.grep_string({ search = vim.fn.input("grep > ") });
end)

vim.keymap.set( 'n', '<leader>ff', builtin.find_files, {})
vim.keymap.set( 'n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set( 'n', '<leader>fb', builtin.buffers, {})
vim.keymap.set( 'n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set( 'n', '<leader>ft', builtin.git_files, {})
vim.keymap.set( 'n', '<leader>fs', builtin.grep_string, {} )
--vim.keymap.set( 'n', '<leader>fs', function()
--    builtin.grep_string({ search = vim.fn.expand("<cword>")})
--end, {} )
