return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},

	opts = {
		strategies = {
			chat = { adapter = "gpt_oss_120b" },
			inline = { adapter = "gpt_oss_20b" },
		},
		adapters = {
			http = {
				gpt_oss_120b = function()
					return require("codecompanion.adapters").extend("openai_compatible", {
						env = {
							api_key = "GROQ_API_KEY",
							url = "https://api.groq.com/openai",
						},
						schema = {
							model = {
								default = "openai/gpt-oss-120b",
							},
						},
					})
				end,

				gpt_oss_20b = function()
					return require("codecompanion.adapters").extend("openai_compatible", {
						env = {
							api_key = "GROQ_API_KEY",
							url = "https://api.groq.com/openai",
						},
						schema = {
							model = {
								default = "openai/gpt-oss-20b",
							},
						},
					})
				end,
			},
		},
	},
}
