-- LSP
-- vim.lsp.enable('rust_analyzer')
local lsp_list = {
    'lua_ls',
    'ts_ls',
    'pyright',
    'clangd',
}
vim.lsp.enable(lsp_list)
-- vim.lsp.enable('ts_ls')
-- vim.lsp.enable('pyright')
-- vim.lsp.enable('clangd')

-- set global config
vim.lsp.config('*', {
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())

})
