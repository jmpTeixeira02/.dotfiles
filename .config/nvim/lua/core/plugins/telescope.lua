return {
    'nvim-telescope/telescope.nvim',
    version = '0.1.5',
    dependencies = {
        'nvim-lua/plenary.nvim',
        "nvim-telescope/telescope-live-grep-args.nvim",
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
        require('telescope').load_extension("fzf")
        require("telescope").load_extension("live_grep_args")
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>fa', builtin.find_files, {})
        vim.keymap.set('n', '<leader>ff', builtin.git_files, {})
        vim.keymap.set('n', '<leader>ft', builtin.treesitter, {})
        vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})
    end,
    setup = {
        extensions = {
            fzf = {
                fuzzy = true,                   -- false will only do exact matching
                override_generic_sorter = true, -- override the generic sorter
                override_file_sorter = true,    -- override the file sorter
                case_mode = "ignore_case",      -- or "ignore_case" or "respect_case"
                -- the default case_mode is "smart_case"
            }
        }
    },
}
