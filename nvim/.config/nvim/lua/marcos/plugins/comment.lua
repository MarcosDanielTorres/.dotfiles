return {
    "numToStr/Comment.nvim",
    event = {"BufReadPre", "BufNewFile"},
    config = true, -- same as doing require('Comment').setup() with no config
}
