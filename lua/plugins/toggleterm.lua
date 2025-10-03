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
          end

      }
      -- or
      -- {'akinsho/toggleterm.nvim', version = "*", opts = {--[[ things you want to change go here]]}}
    }
}
