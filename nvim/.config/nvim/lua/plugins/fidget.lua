vim.pack.add { 'https://github.com/j-hui/fidget.nvim' }

require('fidget').setup {
	progress = {
		suppress_on_insert = true,
	},
}
