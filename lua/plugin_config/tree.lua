vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup({
    on_attach = on_attach,

    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
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
})

vim.keymap.set('n', '<leader>tt', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>tf', ':NvimTreeFindFileToggle<CR>', {noremap = true, silent = true})
