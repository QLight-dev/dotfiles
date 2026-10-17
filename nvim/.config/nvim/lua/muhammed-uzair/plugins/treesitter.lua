return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		lazy = false,
		opts = {
			highlight = { enable = true },
			indent = { enable = true },
			ensure_installed = {
				-- coding
				"go",
				"rust",

				-- config
				"lua", -- nvim
				"toml", -- starship
				"zsh", -- shell and scripts
			},
		},
	},
}
