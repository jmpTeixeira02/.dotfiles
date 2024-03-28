return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")
        require("harpoon"):setup()
        vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
        vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
    end,
}



--vim.keymap.set("n", "<C-1>", function() ui.nav_file(1) endo
--vim.keymap.set("n", "<C-2>", function() ui.nav_file(2) end)
--vim.keymap.set("n", "<C-3>", function() ui.nav_file(3) end)
--vim.keymap.set("n", "<C-4>", function() ui.nav_file(4) end)
--vim.keymap.set("n", "<C-5>", function() ui.nav_file(5) end)
