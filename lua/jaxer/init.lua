require("jaxer.remap")
require("jaxer.packer")

vim.cmd("set relativenumber")
vim.cmd("colorscheme nordic")

vim.wo.number = true

-- Change rel -> absolute line numbers when switching modes --
vim.api.nvim_exec(
	[[
   augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
  augroup END
]],
	false
)

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
