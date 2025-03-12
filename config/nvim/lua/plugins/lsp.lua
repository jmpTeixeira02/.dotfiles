return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
  },
  keys = {
    {
      "<leader>fa",
      function()
        require("fzf-lua").files()
      end,
      desc = "Find files",
    },
    {
      "<leader>ff",
      function()
        require("fzf-lua").git_files()
      end,
      desc = "Find git files",
    },
    {
      "<leader>ca",
      function()
        require("fzf-lua").lsp_code_actions()
      end,
      desc = "Code Actions",
    },
    {
      "<leader>ft",
      function()
        require("fzf-lua").treesitter()
      end,
      desc = "Tree sitter",
    },
    {
      "<leader>fs",
      function()
        require("fzf-lua").live_grep()
      end,
      desc = "Find string",
    },
  },
}
