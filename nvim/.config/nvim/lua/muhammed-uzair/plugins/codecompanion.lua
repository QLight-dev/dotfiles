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
        return require("codecompanion.adapters").extend("openai", {
          env = {
            api_key = os.getenv("GROQ_API_KEY"), -- Export key in shell
            url = "https://api.groq.com/openai/v1", -- Correct base URL
          },
          schema = {
            model = {
              default = "llama-3.3-70b-versatile", -- Recommended model
            },
          },
        })
      end,
    },
  },
}
