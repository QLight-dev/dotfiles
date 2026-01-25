return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			-- 1. Modern LspAttach Autocommand (Handles keybindings globally)
			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(args)
					local opts = { buffer = args.buf }
					vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
					vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)
					vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, opts)
					vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
				end,
			})

			-- 2. Configure capabilities
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- 3. Use 2026 vim.lsp.config API
			-- Go Configuration
			vim.lsp.config("gopls", { capabilities = capabilities })
			vim.lsp.enable("gopls")

			-- Lua Configuration
			vim.lsp.config("lua_ls", { capabilities = capabilities })
			vim.lsp.enable("lua_ls")

			-- 4. Modern Diagnostic Config
			vim.diagnostic.config({
				virtual_text = {
					prefix = "●",
					spacing = 2,
				},
				signs = true,
				underline = true,
				update_in_insert = false,
				severity_sort = true,
			})
		end,
	},
}
