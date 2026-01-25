return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")

		telescope.setup({
			defaults = {
				sorting_strategy = "ascending",
				layout_config = {
					horizontal = {
						prompt_position = "top",
					},
				},
				preview = {
					treesitter = false,
				},
			},
		})

		-- keymaps
		vim.keymap.set("n", "<leader>lg", builtin.live_grep, {
			desc = "Telescope Live Grep",
		})

		vim.keymap.set("n", "<C-p>", builtin.find_files, {
			desc = "Telescope Find Files",
		})
	end,
}
