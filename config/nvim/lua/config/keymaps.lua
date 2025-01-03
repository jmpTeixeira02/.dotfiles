-- VIM Default ---
--
vim.g.mapleader = " "
vim.g.last_buffer = 0

local wk = require("which-key")
wk.add({
  { "<leader><CR>", vim.cmd.so, desc = "Reload Vim Config" },
  { "<leader>y", '"+y"', desc = "Yank to clipboard", mode = { "v", "n" } },
  { "<leader>Y", '"+Y"', desc = "Yank to end to clipboard", mode = { "v", "n" } },
})

-- Recenter buffer
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("i", "<C-c>", "<Esc>")

--- PLUGINS ---
