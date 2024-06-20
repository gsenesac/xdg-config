local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  print( lazypath )
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "file://" .. vim.g.gordo_pluginpath .. "lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec = "gordo.lazy",
    git = {
        -- defaults for the `Lazy log` command
        -- log = { "--since=3 days ago" }, -- show commits from the last 3 days
        log = { "-8" }, -- show the last 8 commits
        timeout = 120, -- kill processes that take more than 2 minutes
        url_format = "file://" .. vim.g.gordo_pluginpath .. "/%s.git",
    },
    -- dev = {
    --     path = vim.g.gordo_pluginpath
    -- },
})
