vim.pack.add { 'https://github.com/rachartier/tiny-cmdline.nvim' }

vim.api.nvim_set_hl(0, 'TinyCmdlineNormal', { bg = '#1e1e2e' })
vim.api.nvim_set_hl(0, 'TinyCmdlineBorder', { fg = '#89b4fa', bg = '#1e1e2e' })

require('tiny-cmdline').setup {
	width = { value = '30%' },
	border = 'single',
}
