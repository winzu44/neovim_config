return {
    {
      -- amongst your other plugins
      {
          'akinsho/toggleterm.nvim',
          version = "*",
          config = function()
              require("toggleterm").setup()
            local Terminal  = require('toggleterm.terminal').Terminal
            local lazygit = Terminal:new({ cmd = "lazygit", direction = "float",hidden = true })
            local normal_term = Terminal:new({direction = "float",hidden = true})

            function _lazygit_toggle()
              lazygit:toggle()
            end
            function _normal_term_toggle()
                normal_term:toggle()
            end

            vim.keymap.set("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>")
            -- Toggle term
            -- vim.keymap.set("n", "<F7>", "<cmd>lua _normal_term_toggle()<CR>")
            vim.keymap.set("n", "<F7>", "<cmd>ToggleTerm direction=float<CR>")
            vim.keymap.set("t", "<F7>", "<cmd>ToggleTerm<CR>")
          end

      }
      -- or
      -- {'akinsho/toggleterm.nvim', version = "*", opts = {--[[ things you want to change go here]]}}
    }
}
