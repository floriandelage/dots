vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear search highlights' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Next search result (centered)' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Previous search result (centered)' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Half page down (centered)' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Half page up (centered)' })

vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { desc = 'Move line down' })
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { desc = 'Move line up' })
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { desc = 'Move selection down' })
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { desc = 'Move selection up' })

vim.keymap.set('v', '<', '<gv', { desc = 'Indent left and reselect' })
vim.keymap.set('v', '>', '>gv', { desc = 'Indent right and reselect' })

vim.keymap.set('n', 'J', 'mzJ`z', { desc = 'Join lines and keep cursor position' })

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = '[Q]uickfix list' })

vim.keymap.set('n', '<C-h>', '<cmd><C-U>TmuxNavigateLeft<cr>')
vim.keymap.set('n', '<C-j>', '<cmd><C-U>TmuxNavigateDown<cr>')
vim.keymap.set('n', '<C-k>', '<cmd><C-U>TmuxNavigateUp<cr>')
vim.keymap.set('n', '<C-l>', '<cmd><C-U>TmuxNavigateRight<cr>')
vim.keymap.set('n', '<C-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>')
