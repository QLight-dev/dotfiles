return {
        "mfussenegger/nvim-dap",
        dependencies = {
                "rcarriga/nvim-dap-ui",
                "nvim-neotest/nvim-nio",
                "leoluz/nvim-dap-go",
        },
        url = "git@github.com:mfussenegger/nvim-dap.git",
        config = function()
                local dap, dapui = require("dap"), require("dapui")
                require("dap-go").setup()
                require("dapui").setup()

                -- Explicit Go config (this is what was missing)
                dap.configurations.go = {
                        {
                                type = "go",
                                name = "Debug",
                                request = "launch",
                                program = "${file}",
                        },
                }

                -- DAP UI listeners
                dap.listeners.before.attach.dapui_config = function()
                        dapui.open()
                end
                dap.listeners.before.launch.dapui_config = function()
                        dapui.open()
                end
                dap.listeners.before.event_terminated.dapui_config = function()
                        dapui.close()
                end
                dap.listeners.before.event_exited.dapui_config = function()
                        dapui.close()
                end

                -- Keymaps
                vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint)
                vim.keymap.set("n", "<leader>dc", dap.continue)
        end,
}
