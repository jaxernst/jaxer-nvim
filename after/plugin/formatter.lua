local function prettier()
	return {
		exe = "prettier",
		args = {
			"--config-precedence",
			"prefer-file",
			"--single-quote",
			"--no-bracket-spacing",
			"--prose-wrap",
			"always",
			"--arrow-parens",
			"always",
			"--trailing-comma",
			"all",
			"--no-semi",
			"--end-of-line",
			"lf",
			"--print-width",
			vim.bo.textwidth,
			"--stdin-filepath",
			vim.fn.shellescape(vim.api.nvim_buf_get_name(0)),
		},
		stdin = true,
	}
end

require("formatter").setup({
	-- Enable or disable logging
	logging = true,
	-- Set the log level
	log_level = vim.log.levels.WARN,
	-- All formatter configurations are opt-in
	filetype = {
		-- Formatter configurations for filetype "lua" go here
		-- and will be executed in order
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		typescript = {
			require("formatter.filetypes.typescript").prettier,
		},
		typescriptreact = {
			require("formatter.filetypes.typescriptreact").prettier,
		},
		javascript = {
			require("formatter.filetypes.javascript").prettier,
		},
		javascriptreact = {
			require("formatter.filetypes.javascriptreact").prettier,
		},
	},
})

vim.api.nvim_exec(
	[[
  augroup FormatAutogroup
    autocmd!
    autocmd BufWritePost * FormatWrite
  augroup END
]],
	false
)
