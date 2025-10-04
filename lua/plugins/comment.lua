
-- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
return {
    'numToStr/Comment.nvim',
    config = function()
        require("Comment").setup({
            toggler = {
                line = '<leader>/'
            },
            opleader = {
                line = '<leader>/'
            }
        })
    end,
    opts = {
        -- add any options here
    }
}
