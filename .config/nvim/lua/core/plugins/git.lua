return {
    "tpope/vim-fugitive",
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require('gitsigns').setup{
                current_line_blame = true
            }
            vim.keymap.set("n", "<leader>gh", ":Gitsigns preview_hunk<CR>")
        end
    },
}
