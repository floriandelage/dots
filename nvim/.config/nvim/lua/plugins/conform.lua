vim.pack.add { { src = 'https://github.com/stevearc/conform.nvim' } }

require('conform').setup {
	default_format_opts = { lsp_format = 'fallback' },
	format_on_save = { timeout_ms = 500 },
	formatters_by_ft = {
		lua = { 'stylua' },
		sql = { 'sql_formatter' },
	},
}
