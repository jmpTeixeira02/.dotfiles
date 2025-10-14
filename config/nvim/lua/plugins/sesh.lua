return {
  {
    dir = "~/nvim-tmux-sesh",
    dependencies = {
      "folke/snacks.nvim",
    },
    keys = {
      {
        "<A-s>",
        function()
          require("sesh").ConnectSession()
        end,
        desc = "Connect TMUX Session",
      },
      {
        "<A-S>",
        function()
          require("sesh").StartNewSession()
        end,
        desc = "Start TMUX Session",
      },
      {
        "<A-K>",
        function()
          require("sesh").KillSession()
        end,
        desc = "Kill TMUX Session",
      },
    },
  },
}
