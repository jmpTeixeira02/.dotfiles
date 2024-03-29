return {
    "tpope/vim-fugitive",
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require('gitsigns').setup {
                current_line_blame = true
            }
            vim.keymap.set("n", "<leader>gh", ":Gitsigns preview_hunk<CR>")
        end
    },
    {
        "kdheepak/lazygit.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            cmd = {
                    "LazyGit",
                    "LazyGitConfig",
                    "LazyGitCurrentFile",
                    "LazyGitFilter",
                    "LazyGitFilterCurrentFile",
                },
                require("lazy").setup({

                    vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>")
                })
        end
    }
}
