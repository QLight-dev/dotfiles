local opts = { noremap = true, silent = true }

-- Set map leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- greatest remap ever : ThePrimeagen
vim.keymap.set("v", "<leader>p", [["\"_dP]], opts)

-- fix life
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], opts)
vim.keymap.set({ "n", "v" }, "<leader>D", [["_D]], opts)

vim.keymap.set({ "n", "v" }, "<leader>C", [["_C]], opts)
vim.keymap.set({ "n", "v" }, "<leader>c", [["_c]], opts)

-- Make 'x' delete without affecting the clipboard
vim.keymap.set("n", "x", [["_x]], opts)
