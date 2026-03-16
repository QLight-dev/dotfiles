return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- lua
				null_ls.builtins.formatting.stylua,

				-- golang
				null_ls.builtins.formatting.goimports,
				null_ls.builtins.diagnostics.golangci_lint,

				-- SQL
				null_ls.builtins.formatting.sql_formatter,
			},
		})

		vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
	end,
}
