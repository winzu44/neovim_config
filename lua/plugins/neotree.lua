return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    keys = {
    { '<leader>o', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    },
    opts = {
    filesystem = {
      window = {
        mappings = {
          ['<leader>o'] = 'close_window',
        },
      },
    },
  },
  }
}
