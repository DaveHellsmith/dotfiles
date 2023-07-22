local status, packer = pcall(require, "packer")

if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'nvim-lualine/lualine.nvim',
     requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

  use 'github/copilot.vim' -- Configurations for Github Copilot

  use { "williamboman/mason.nvim" }
  use { "williamboman/mason-lspconfig.nvim" }

  use { "catppuccin/nvim", as = "catppuccin" }

  use 'kyazdani42/nvim-web-devicons' 

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'}, { 'nvim-lua/popup.nvim' } }
  }

  use { 'stevearc/dressing.nvim' }

  use {"akinsho/toggleterm.nvim", tag = 'v2.*', config = function()
    require("toggleterm").setup()
  end} 

  use { 'lewis6991/gitsigns.nvim' }

  use 'MunifTanjim/nui.nvim'

  use {
    'hrsh7th/nvim-cmp',
    requires = {
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'hrsh7th/cmp-cmdline' },
      { 'L3MON4D3/LuaSnip' },
      { 'saadparwaiz1/cmp_luasnip' }
    },
  }

  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    }
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
end)
