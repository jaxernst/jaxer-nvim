require("jaxer.remap")
require("jaxer.packer")

vim.cmd('set relativenumber')
vim.cmd('colorscheme kanagawa-dragon')

vim.wo.number = true

vim.api.nvim_exec([[
  augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
  augroup END
]], false)

