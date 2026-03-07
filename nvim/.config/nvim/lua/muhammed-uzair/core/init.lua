require("muhammed-uzair.core.options")
require("muhammed-uzair.core.keymaps")

vim.api.nvim_create_autocmd("FileType", {
	pattern = "codecompanion",
	callback = function()
		-- Set filetype to markdown
		vim.bo.filetype = "markdown"

		local buf = 0
		local name = vim.api.nvim_buf_get_name(buf)

		-- Only rename if it doesn't already end with .md
		if not name:match("%.md$") then
			-- Check if a buffer with "codecompanion.md" already exists
			local exists = false
			for _, b in ipairs(vim.api.nvim_list_bufs()) do
				if vim.api.nvim_buf_get_name(b):match("codecompanion%.md$") then
					exists = true
					break
				end
			end

			if not exists then
				vim.api.nvim_buf_set_name(buf, "codecompanion.md")
			end
		end
	end,
})
