require('neo-tree').setup({

    enable_git_status = true,

    window = {
        mappings = {
            ["o"] = "open",
        }
    },

    default_component_configs = {
        git_status = {
            added     = "✚", -- NOTE: you can set any of these to an empty string to not show them
            deleted   = "✖",
            modified  = "",
            renamed   = "",
            -- Status type
            untracked = "",
            ignored   = "",
            unstaged  = "",
            staged    = "",
            conflict  = "",
        },
    },
})
