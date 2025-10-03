-- set leader key (Space)
vim.g.mapleader = ' ' 
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
-- Save(Space + w), Quit(Space + q)
vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>q", ":q<CR>", { noremap = true, silent = true })
-- Esc
vim.keymap.set("i", "jk", "<ESC>", {noremap = true})



-- Toggle term
vim.keymap.set("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>")
vim.keymap.set("n", "<F7>", "<cmd>ToggleTerm direction=float<CR>")
vim.keymap.set("t", "<F7>", "<cmd>ToggleTerm<CR>")
-- telescope
vim.keymap.set("n", "<leader>f", ":Telescope find_files<CR>")
