return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},

	opts = {
		strategies = {
			chat = { adapter = "groq" },
			inline = { adapter = "groq" },
		},

		adapters = {
			groq = function()
				return require("codecompanion.adapters").extend("openai_compatible", {
					env = {
						api_key = "GROQ_API_KEY",
						url = "https://api.groq.com/openai",
					},
					schema = {
						model = {
							default = "qwen/qwen3-32b",
							choices = {
								"openai/gpt-oss-120b",
								"qwen/qwen3-32b",
							},
						},
					},
				})
			end,
		},
	},
}
