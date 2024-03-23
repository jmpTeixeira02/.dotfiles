local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "
local plugins = {
    {
        'nvim-telescope/telescope.nvim', version = '0.1.5',
        dependencies = { {'nvim-lua/plenary.nvim'} }
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
    },
    "tpope/vim-commentary",
    "rebelot/kanagawa.nvim",

    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    'nvim-treesitter/nvim-treesitter', run = ':TSUpdate',
    'theprimeagen/harpoon',
    'mbbill/undotree',
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    },
}

require("lazy").setup(plugins, {})
