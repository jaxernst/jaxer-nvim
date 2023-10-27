vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.api.nvim_set_keymap('n', '<leader>w', ':wincmd w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', ' sa', 'ggVG', { noremap = true })

-- Normal mode mapping to yank to system clipboard
vim.api.nvim_set_keymap('n', '<Leader>y', '"+y', { noremap = true, silent = true })

-- Visual mode mapping to yank selected text to system clipboard
vim.api.nvim_set_keymap('v', '<Leader>y', '"+y', { noremap = true, silent = true })


