return {
  {
    "rebelot/kanagawa.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-dragon",
    },
  },

  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
  },
}
