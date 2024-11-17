-- VIM Default ---
--
vim.g.mapleader = " "
vim.g.last_buffer = 0

vim.keymap.set("n", "<leader><CR>", vim.cmd.so)

-- Recenter buffer
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Clipboard instead of vim yank
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

vim.keymap.set("i", "<C-c>", "<Esc>")

--- PLUGINS ---
--

-- OIL (File Explorer)
vim.keymap.set("n", "<leader>pv", "<CMD>Oil<CR>")
