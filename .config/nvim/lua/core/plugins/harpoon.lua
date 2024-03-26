return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("harpoon"):setup()
    end, 
    keys = {
        {"n", "<leader>a", function() harpoon:list():append() end},
        {"n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end}
    }
}



--vim.keymap.set("n", "<C-1>", function() ui.nav_file(1) endo
--vim.keymap.set("n", "<C-2>", function() ui.nav_file(2) end)
--vim.keymap.set("n", "<C-3>", function() ui.nav_file(3) end)
--vim.keymap.set("n", "<C-4>", function() ui.nav_file(4) end)
--vim.keymap.set("n", "<C-5>", function() ui.nav_file(5) end)
