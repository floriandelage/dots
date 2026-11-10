vim.pack.add {
	{ src = 'https://github.com/nvim-lua/plenary.nvim' },
	{ src = 'https://github.com/nvim-telescope/telescope.nvim' },
	{ src = 'https://github.com/nvim-telescope/telescope-ui-select.nvim' },
	{ src = 'https://github.com/nvim-telescope/telescope-fzf-native.nvim' },
}

require('telescope').setup {
	extensions = {
		['ui-select'] = { require('telescope.themes').get_dropdown() },
	},
}

pcall(require('telescope').load_extension, 'fzf')
pcall(require('telescope').load_extension, 'ui-select')

local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Find Help' })
vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = 'Find Keymaps' })
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find Files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Find by Grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find existing buffers' })

vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('telescope-lsp-attach', { clear = true }),
	callback = function(event)
		local buf = event.buf
		vim.keymap.set('n', 'gri', builtin.lsp_implementations, { buffer = buf, desc = 'Goto Implementation' })
		vim.keymap.set('n', 'grr', builtin.lsp_references, { buffer = buf, desc = 'Goto References' })
		vim.keymap.set('n', 'grt', builtin.lsp_type_definitions, { buffer = buf, desc = 'Goto Type Definition' })
	end,
})
