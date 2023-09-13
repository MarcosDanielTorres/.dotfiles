return {
    "ThePrimeagen/harpoon",
    dependencies = { 'nvim-lua/plenary.nvim'},
    config = function()
        -- local builtin = require('telescope.builtin')
        -- vim.keymap.set('n', '<leader>pf', function() 
        --     builtin.find_files({ hidden = true})
        --     -- change current working dir to current working dir:
        --     -- print(vim.fn.expand('%:p:h')) ---> :pwd
        --     --builtin.find_files({ hidden = true, cwd = vim.fn.expand('%:p:h')})
        -- end)
        --
        -- -- vim.keymap.set('n', '<leader>pf', builtin.find_files, { hidden = true })
        -- -- vim.keymap.set('n', '<leader>pf', builtin.find_files, { hidden = true })
        -- vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        -- vim.keymap.set('n', '<leader>ps', function()
        --     builtin.grep_string({ search = vim.fn.input("Grep > ") });
        -- end)


        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        vim.keymap.set("n", "<leader>ha", mark.add_file)
        vim.keymap.set("n", "<leader>hs", ui.toggle_quick_menu)

        vim.keymap.set("n", "<leader>h1", function() ui.nav_file(1) end)
        vim.keymap.set("n", "<leader>h2", function() ui.nav_file(2) end)
        vim.keymap.set("n", "<leader>h3", function() ui.nav_file(3) end)
        vim.keymap.set("n", "<leader>h4", function() ui.nav_file(4) end)
        vim.keymap.set("n", "<leader>h5", function() ui.nav_file(4) end)
    end,
}

