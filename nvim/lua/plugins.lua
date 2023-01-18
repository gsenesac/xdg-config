vim.cmd [[packadd packer.nvim]]

return require('packer').startup( function( use )
  -- Packer manages itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim',
	  requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use({
	  'rose-pine/neovim', 
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use 'neovim/nvim-lspconfig'
  use 'nvim-treesitter/playground' 

  use {'nvim-orgmode/orgmode', config = function()
      require('orgmode').setup{}
  end}

  use { "/home/gordo/rje/neovim_plugins/nvim-cmp" }
  use { "/home/gordo/rje/neovim_plugins/cmp-buffer" }
  use { "/home/gordo/rje/neovim_plugins/cmp-nvim-lua" }
  use { "/home/gordo/rje/neovim_plugins/cmp_luasnip", 
         requires = {{ "/home/gordo/rje/neovim_plugins/LuaSnip" }} }

end)
