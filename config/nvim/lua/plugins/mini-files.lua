return {
  "nvim-mini/mini.files",
  lazy = false,
  opts = {
    windows = {
      preview = true,
      width_focus = 30,
      width_preview = 100,
      use_statusline = true,
    },
    options = {
      use_as_default_explorer = true,
    },
    mappings = {
      close = "q",
      go_in = "",
      go_in_plus = "<CR>",
      go_out = "-",
      go_out_plus = "H",
      mark_goto = "'",
      mark_set = "m",
      reset = "<BS>",
      reveal_cwd = "@",
      show_help = "g?",
      synchronize = "<C-s>",
      trim_left = "<",
      trim_right = ">",
    },
  },
  keys = {
    {
      "<leader>pv",
      function()
        local minifiles = require("mini.files")
        if not minifiles.close() then
          minifiles.open(vim.api.nvim_buf_get_name(0), true)
        end
      end,
      desc = "Open mini.files (Directory of Current File)",
    },
    {
      "<leader>pV",
      function()
        local minifiles = require("mini.files")
        if not minifiles.close() then
          minifiles.open(vim.uv.cwd(), true)
        end
      end,
      desc = "Open mini.files (cwd)",
    },
  },
}
