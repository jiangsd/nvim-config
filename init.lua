vim.opt.guicursor='i:block-blinkwait300-blinkon200-blinkof150'


local path = string.format("%s//%s", vim.fn.stdpath('config'), "config.vim")
local source_cmd = "source " .. path
vim.cmd(source_cmd);

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath
    })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {

  'nvim-tree/nvim-tree.lua',
  -- 'wbthomason/packer.nvim',
  'neovim/nvim-lspconfig', 

  'hrsh7th/nvim-cmp', 
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/cmp-buffer',

  'saadparwaiz1/cmp_luasnip',
  'L3MON4D3/LuaSnip',
  
  'mfussenegger/nvim-jdtls',

  {
      'nvim-telescope/telescope.nvim', version = '0.1.2',
      dependencies = {'nvim-lua/plenary.nvim'} 
  },

  {
      'akinsho/bufferline.nvim', version = "*",
      dependencies = {'nvim-tree/nvim-web-devicons'} 
  },

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons'}
  },

  'windwp/nvim-autopairs',
  'tpope/vim-surround',
  'preservim/nerdcommenter',
  {
      'ellisonleao/gruvbox.nvim'  
  },
  {
      'akinsho/toggleterm.nvim', version = "*", config = true 
  },
  'mfussenegger/nvim-dap',
  'rcarriga/cmp-dap',
  {
      'williamboman/mason.nvim',
      build = ':MasonUpdate'
  }

}
  
local opts = {}

require("lazy").setup(plugins, opts)

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

require('plugin_config')
