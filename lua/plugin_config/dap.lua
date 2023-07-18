-- local dap = require('dap')

vim.keymap.set('n', '<F5>', ':lua require"dap".continue()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<F8>', ':lua require"dap".step_over()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<F7>', ':lua require"dap".step_into()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<F6>', ':lua require"dap".step_out()<CR>', {noremap = true, silent = true})

vim.keymap.set('n', '<leader>b', ':lua require"dap".toggle_breakpoint()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>B', ':lua require"dap".set_breakpoint(vim.fn.input("Condition: "))<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>bl', ':lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log: "))<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>dr', ':lua require"dap".repl.open()<CR>', {noremap = true, silent = true})

-- dap.configurations.java = {
--     {
--         type = 'java',
--         request = 'attach',
--         name = 'localhost 5005',
--         hostName = 'localhost',
--         port = '5005',
--     },
-- }

function attach_to_debug()
    local dap = require('dap')
    dap.configurations.java = {
        {
            type = 'java',
            request = 'attach',
            name = 'localhost5005',
            hostName = 'localhost',
            port = '5005',
        },
    }
    dap.continue()
end


vim.keymap.set('n', '<leader>da', ':lua attach_to_debug()<CR>', {noremap = true, silent = true})
