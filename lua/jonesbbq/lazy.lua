local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { 'rose-pine/neovim', name = 'rose-pine' },

  {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  },

  'mbbill/undotree',
  'nvim-lualine/lualine.nvim',
  'norcalli/nvim-colorizer.lua',

  'nvim-lua/plenary.nvim', -- required by harpoon
  'ThePrimeagen/harpoon',

  -- lsp-zero
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    version = "v2.*",
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
    dependencies = {"rafamadriz/friendly-snippets"},
  },
  {'saadparwaiz1/cmp_luasnip'},

  -- barbar
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
})

