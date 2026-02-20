local opts = { noremap = true, silent = true }

-- Set map leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- for scrolling half pages
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)

-- greatest remap ever : ThePrimeagen
vim.keymap.set("v", "<leader>p", [["\"_dP]], opts)

-- fix life
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], opts)
vim.keymap.set({ "n", "v" }, "<leader>D", [["_D]], opts)

vim.keymap.set({ "n", "v" }, "<leader>C", [["_C]], opts)
vim.keymap.set({ "n", "v" }, "<leader>c", [["_c]], opts)

-- Make 'x' delete without affecting the clipboard
vim.keymap.set("n", "x", [["_x]], opts)

-- mini
vim.keymap.set("n", "<leader>e", function()
    local path = vim.fn.expand("%:p:h")
    require("mini.files").open(path)
end, { desc = "Open mini.files at current buffer" })
