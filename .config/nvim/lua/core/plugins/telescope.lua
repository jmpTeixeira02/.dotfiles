return{
    {
        'nvim-telescope/telescope.nvim', version = '0.1.5',
        dependencies = {
            'nvim-lua/plenary.nvim',
            "BuftrntSushi/ripgrep",
            "nvim-telescope/telescope-live-grep-args.nvim",
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        }
    },
}
