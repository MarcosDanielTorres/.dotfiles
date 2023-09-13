local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', function() 
	builtin.find_files({ hidden = true})
    -- change current working dir to current working dir:
    -- print(vim.fn.expand('%:p:h')) ---> :pwd
	--builtin.find_files({ hidden = true, cwd = vim.fn.expand('%:p:h')})
end)

-- vim.keymap.set('n', '<leader>pf', builtin.find_files, { hidden = true })
-- vim.keymap.set('n', '<leader>pf', builtin.find_files, { hidden = true })
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
