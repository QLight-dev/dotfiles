return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    opts = {
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "go",
        "lua",
      },
    },
  },
}

