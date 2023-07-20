require("plugin_config.tree")
require("plugin_config.lspconfig")
require("plugin_config.telescope")
require("plugin_config.completion")
require("plugin_config.commenter")
require("plugin_config.colorscheme")
require("plugin_config.lualine")
require("plugin_config.dap")
require("plugin_config.dap_config")

vim.opt.termguicolors = true
require("bufferline").setup{}

-- require("lualine").setup{
--     options = {
--         theme = 'gruvbox',
--         disabled_filetypes = {'NvimTree'}
--     }
-- }

require("nvim-autopairs").setup{}

require("toggleterm").setup()

require("mason").setup()
