return {
    
{
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers", -- or "tabs"
        diagnostics = "nvim_lsp",
        show_buffer_close_icons = false,
        show_buffer_icons = true, 
        separator_style = "slant",
         indicator = {
                        style = 'underline',
                    },       
        always_show_bufferline = true,
        offsets = {
                    {
                      filetype = "neo-tree",
                      text = function()
                        return vim.fn.getcwd()
                      end,
                      highlight = "Directory",
                      text_align = "left"
                    }
                  }
  

      },
        
    })
  end,
}
}
