vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.api.nvim_set_keymap('n', '<leader>w', ':wincmd w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'vj', '4j', { noremap = true })
vim.api.nvim_set_keymap('n', 'vk', '4k', { noremap = true })
vim.api.nvim_set_keymap('n', 'vh', '8h', { noremap = true })
vim.api.nvim_set_keymap('n', 'vl', '8l', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>a', 'ggVG', { noremap = true })






