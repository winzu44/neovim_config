return {
    'nvim-telescope/telescope.nvim',
    opts = {
        defaults = {
            preview = {
                treesitter = false,
            }
        }
    },
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' }
}
