return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons", -- optional, but recommended
        },
        lazy = false,                      -- neo-tree will lazily load itself
        keys = {
            { '<leader>o', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
        },
        config = function()
            require('neo-tree').setup({
                -- options go here
                filesystem = {
                    follow_current_file = {
                        enabled = true,
                        use_libuv_file_watcher = true,
                    },
                    window = {
                        mappings = {
                            ['<leader>o'] = 'close_window',
                        },
                    },
                },

            })
        end,

        -- opts = {
        --     filesystem = {
        --         follow_current_file = {
        --             enabled = true,
        --         },
        --         window = {
        --             mappings = {
        --                 ['<leader>o'] = 'close_window',
        --             },
        --         },
        --     },
        -- },
    }
}
