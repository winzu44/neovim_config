-- Hint: use `:h <option>` to figure out the meaning if needed
vim.opt.clipboard = 'unnamedplus' -- use system clipboard
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
vim.opt.mouse = 'a'               -- allow the mouse to be used in nvim

-- Tab
vim.opt.tabstop = 4      -- number of visual spaces per TAB
vim.opt.softtabstop = 4  -- number of spaces in tab when editing
vim.opt.shiftwidth = 4   -- insert 4 spaces on a tab
vim.opt.expandtab = true -- tabs are spaces, mainly because of Python

-- UI config
vim.opt.number = true         -- show absolute number
vim.opt.relativenumber = true -- add numbers to each line on the left side
vim.opt.cursorline = true     -- highlight cursor line underneath the cursor horizontally
vim.opt.splitbelow = true     -- open new vertical split bottom
vim.opt.splitright = true     -- open new horizontal splits right
-- vim.opt.termguicolors = true        -- enable 24-bit RGB color in the TUI
vim.opt.showmode = false      -- we are experienced, wo don't need the "-- INSERT --" mode hint

-- Searching
vim.opt.incsearch = true  -- search as characters are entered
vim.opt.hlsearch = false  -- do not highlight matches
vim.opt.ignorecase = true -- ignore case in searches by default
vim.opt.smartcase = true  -- but make it case sensitive if an uppercase is entered

-- LSP
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('lua_ls')
vim.lsp.enable('ts_ls')
vim.lsp.enable('pyright')

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = "*.txt",
    callback = function()
        vim.b.completion = false
    end,
})


vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = { "*.lua", "*.tsx" },
    callback = function()
        vim.lsp.buf.format({ async = false })
    end,
})

vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.rs",
    callback = function()
        vim.cmd("RustFmt")
    end
})

-- show messages on code (error/warning)
vim.diagnostic.config({
    virtual_text = {
        prefix = "●", -- or "", "", etc. for icons
        spacing = 2,
    },
    signs = true,
    underline = true,
    update_in_insert = false,
})
-- set leader key (Space)


-- disable auto comment
vim.api.nvim_create_autocmd(
    "FileType",
    { group = vim.api.nvim_create_augroup("turn_off_auto_commenting", {}), pattern = "*", command = [[setlocal fo-=cro]] }
)

-- text search
vim.o.hlsearch = true  -- Highlight all matches
vim.o.incsearch = true -- Show matches as you type
