return {
    "tpope/vim-fugitive",
    {
        'lewis6991/gitsigns.nvim',
        setup = {
            current_line_blame = true
        },
        keys = {
            {"n", "<leader>gh", ":Gitsigns preview_hunk<CR>"}
        }
    },
}
