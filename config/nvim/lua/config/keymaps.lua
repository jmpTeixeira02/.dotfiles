-- VIM Default ---
--
vim.g.mapleader = " "
vim.g.last_buffer = 0

vim.keymap.set("n", "<C-f>", "<cmd>!sesh-sessions<CR>")

local wk = require("which-key")
wk.add({
  { "<leader><CR>", vim.cmd.so, desc = "Reload Vim Config" },
  -- { "<A-S>", "<cmd>silent !sesh-new-session<cr>", desc = "Open tmux sessions" },
  -- { "<A-s>", "<cmd>silent !sesh-sessions<cr>", desc = "Add new tmux session" },
})

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("i", "<C-c>", "<Esc>")

-- vim.keymap.set("n", "<A-s>", open_sesh_new_session, { desc = "Sesh new session picker" })
