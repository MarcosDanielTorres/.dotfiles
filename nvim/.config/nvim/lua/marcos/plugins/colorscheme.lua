return {
    "bluz71/vim-nightfly-colors",
    name = "nightfly",
    lazy = false,
    priority = 100,
    config = function()
        vim.cmd([[colorscheme nightfly]])
    end,
}
