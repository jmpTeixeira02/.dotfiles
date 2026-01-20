return {
  "folke/snacks.nvim",
  keys = {
    {
      "<leader>fa",
      function()
        Snacks.picker.files()
      end,
      desc = "Find Files (Root Dir)",
    },
    { "<leader>fA", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
    {
      "<leader>ff",
      function()
        Snacks.picker.git_files()
      end,
      desc = "Find Files (git-files)",
    },
    {
      "<leader>uu",
      function()
        Snacks.picker.undo()
      end,
      desc = "Undotree",
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
        Snacks.picker.treesitter()
      end,
      desc = "Tree sitter",
    },
    { "<leader>fs", LazyVim.pick("grep"), desc = "Grep (Root Dir)" },
  },
}
