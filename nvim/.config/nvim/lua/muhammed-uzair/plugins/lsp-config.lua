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
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.gopls.setup({
				capabilities = capabilities,
			})
			lspconfig.pyright.setup({
				capabilities = capabilities,
				settings = {
					python = {
						pythonPath = "/home/muhammed-uzair/env/bin/python",
						analysis = {
							autoSearchPaths = true,
							diagnosticMode = "workspace",
						},
					},
				},
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

			-- Setup diagnostic display
			vim.diagnostic.config({
				virtual_text = {
					prefix = "●", -- Could also be '▎' or '■'
					spacing = 2,
				},
				signs = true, -- show in the gutter
				underline = true, -- underline errors/warnings
				update_in_insert = false, -- do not update while typing
				severity_sort = true, -- sort by severity
			})
		end,
	},
}
