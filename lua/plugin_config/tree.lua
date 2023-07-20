vim.g.loaded = 1 vim.g.loaded_netrwPlugin = 1      
require("nvim-tree").setup({
    on_attach = on_attach,

    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        width = 30,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
    git = {
        timeout = 4000,
    }
})

vim.keymap.set('n', '<leader>tt', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>tf', ':NvimTreeFindFileToggle<CR>', {noremap = true, silent = true})
