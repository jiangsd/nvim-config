require("toggleterm").setup {
    open_mapping= [[<c-\>]],
    shell = vim.o.shell
}

function _G.set_terminal_keymaps() 
    local opts = {buffer = 0}
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
end

-- if you only want there mappings for toggle term use term://*toggleterm#" instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
