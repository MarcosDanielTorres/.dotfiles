return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        "nvim-tree/nvim-web-devicons",
        {"nvim-telescope/telescope-fzf-native.nvim", build = "make"},
    },
    config = function()
        local telescope = require('telescope')
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', function() 
            builtin.find_files({ hidden = true})
            -- change current working dir to current working dir:
            -- print(vim.fn.expand('%:p:h')) ---> :pwd
            --builtin.find_files({ hidden = true, cwd = vim.fn.expand('%:p:h')})
        end)

        -- vim.keymap.set('n', '<leader>pf', builtin.find_files, { hidden = true })
        -- vim.keymap.set('n', '<leader>pf', builtin.find_files, { hidden = true })
        vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = "Fuzzy find files from git"})
        vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = "Fuzzy find recent files"})
        vim.keymap.set('n', '<leader>fl', builtin.live_grep, { desc = "Fuzzy find string in cwd"})
        vim.keymap.set('n', '<leader>fs', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") });
        end)

        telescope.load_extension("fzf")
    end,
}

