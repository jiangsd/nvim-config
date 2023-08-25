-- local dap = require('dap')

vim.keymap.set('n', '<F5>', ':lua require"dap".continue()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<F8>', ':lua require"dap".step_over()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<F7>', ':lua require"dap".step_into()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<F6>', ':lua require"dap".step_out()<CR>', {noremap = true, silent = true})

vim.keymap.set('n', '<leader>b', ':lua require"dap".toggle_breakpoint()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>B', ':lua require"dap".set_breakpoint(vim.fn.input("Condition: "))<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>bl', ':lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log: "))<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>dr', ':lua require"dap".repl.open()<CR>', {noremap = true, silent = true})

vim.keymap.set({'n', 'v'}, '<Leader>dh', function() require('dap.ui.widgets').hover() end)
vim.keymap.set({'n', 'v'}, '<Leader>dp', function() require('dap.ui.widgets').preview() end)
vim.keymap.set('n', '<Leader>df', function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.frames)
end)
vim.keymap.set('n', '<Leader>ds', function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.scopes)
end)

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

function attach_to_debug(app_host, app_port)
    local dap = require('dap')
    dap.configurations.java = {
        {
            type = 'java',
            request = 'attach',
            name = 'attach testing5',
            hostName = app_host,
            port = app_port,
        },
    }
    dap.continue()
end

vim.keymap.set('n', '<leader>da', ':lua attach_to_debug()<CR>', {noremap = true, silent = true})


function show_dap()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.scopes)
    -- widgets.hover()
end

vim.keymap.set('n', 'gs', ':lua show_dap()<CR>', {noremap = true, silent = true})


function reload_continue()
    local dap = require'dap'
    package.load['plugin_config.dap_config'] = nil
    require('plugin_config.dap_config')
end
