-- Open up file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Lexplore)

-- Toggle Undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- J keeps the cursor in the line to be appended
vim.keymap.set("n", "J", "mzJ`z")

-- After <C-d> or <C-u> places the cursor always at the center of the screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Centers the highlighted word
-- vim.keymap.set("n", "n", "nzzzv")
-- vim.keymap.set("n", "N", "Nzzzv")

-- When using 'p': contents replaced by pasting does not go into the copy register
-- When using '<leader>p': it does
vim.keymap.set("x", "<leader>p", "p")
vim.keymap.set("x", "p", "\"_dP")


-- Copy contents to system clipboard. It may be failing. Try vim.opt.clipboard=unnamed
-- vim.opt.clipboard:append{'unnamed', 'unnamedplus'}
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- It does not replace the contents of the copy register by the deleted lines 
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")


vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- This should be inside the lsp mappings
-- vim.keymap.set("n", "<leader>f", function()
    -- vim.lsp.buf.format()
-- end)

-- Quickfix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Replace current word with another one
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make script executable
vim.keymap.set("n", "<leader>x", "<cmd>silent !chmod +x %<CR>")

-- Useless
-- vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/chau.lua<CR>");
--
-- Source file
vim.keymap.set("n", "<leader><leader>", vim.cmd.source)
