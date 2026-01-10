
return {
    { "echasnovski/mini.nvim", version = false },

    {
        "echasnovski/mini.files",
        config = function()
            local MiniFiles = require("mini.files")
            MiniFiles.setup({
                mappings = {
                    go_in = "<CR>",
                    go_in_plus = "l",
                    go_out = "-",
                    go_out_plus = "h",
                },
            })
            vim.keymap.set("n", "<leader>ee", "<cmd>lua MiniFiles.open()<CR>")
        end,
    },

    {
        "echasnovski/mini.trailspace",
        config = function()
            local miniTrailspace = require("mini.trailspace")
            miniTrailspace.setup({
                only_in_normal_buffers = true,
            })
            vim.keymap.set("n", "<leader>cw", function() miniTrailspace.trim() end)
        end,
    },
}
