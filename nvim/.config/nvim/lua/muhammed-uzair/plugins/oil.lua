return {
  'stevearc/oil.nvim',
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
  config = function()
    require("oil").setup({
      default_file_explorer = true,
      columns = {},
      keymaps = {
        -- you can add Oil-specific keymaps here
      },
      delete_to_trash = true,
      view_options = {
        show_hidden = true,
      },
      skip_confirm_for_simple_edits = true,
    })

    -- Normal mode keymaps
    vim.keymap.set("n", "-", "<CMD>Oil<CR>", { silent = true })
    vim.keymap.set("n", "<leader>-", require("oil").toggle_float, { silent = true })
  end,
}
