return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},
  config = function()
    require("oil").setup({
      view_options = {
        show_hidden = true,
        natural_order = true,
        is_always_hidden = function(name, _)
          return name == ".." or name == ".git"
        end,
      },
      keymaps = {
        ["<C-s>"] = "false",
        ["<C-t>"] = "false",
        ["<C-h>"] = "false",
        ["<C-c>"] = "false",
      },
    })
  end,
}
