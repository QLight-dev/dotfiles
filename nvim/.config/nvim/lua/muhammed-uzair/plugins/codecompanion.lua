return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},

	opts = {
		strategies = {
			chat = { adapter = "groq_big" },
			inline = { adapter = "groq_small" },
		},

		adapters = {
			http = {
				groq_big = function()
					return require("codecompanion.adapters").extend("openai_compatible", {
						env = {
							api_key = "GROQ_API_KEY",
							url = "https://api.groq.com/openai",
						},
						schema = {
							model = {
								default = "llama-3.3-70b-versatile",
							},
						},
					})
				end,

				groq_small = function()
					return require("codecompanion.adapters").extend("openai_compatible", {
						env = {
							api_key = "GROQ_API_KEY",
							url = "https://api.groq.com/openai",
						},
						schema = {
							model = {
								default = "llama-3.1-8b-instant",
							},
						},
					})
				end,
			},
		},
	},
}
