vim.o.termguicolors = true
-- vim.o.background = "dark"

vim.cmd [[

    augroup ColorschemePreferences
        autocmd!
        autocmd ColorScheme * highlight Normal      ctermbg=NONE guibg=NONE
        autocmd ColorScheme * highlight SignColumn  ctermbg=NONE guibg=NONE
        autocmd ColorScheme * highlight Tdodo       ctermbg=NONE guibg=NONE
        autocmd ColorScheme * highlight StatusLine  ctermbg=NONE guibg=NONE
    augroup END

    colorscheme gruvbox
]]
