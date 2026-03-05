require("muhammed-uzair.core.options")
require("muhammed-uzair.core.keymaps")

-- Add this somewhere in your init.lua or plugin config
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	group = vim.api.nvim_create_augroup("codecompanion", {}),
	pattern = "codecompanion",
	callback = function()
		print("autocmd triggered")
		vim.bo.filetype = "markdown"
	end,
})
