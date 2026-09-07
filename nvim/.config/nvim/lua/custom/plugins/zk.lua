vim.pack.add { 'https://github.com/zk-org/zk-nvim' }
require('zk').setup { picker = 'telescope' }

vim.keymap.set(
  'n',
  '<leader>zn',
  "<cmd>ZkNew { dir = vim.fn.expand('$ZK_NOTEBOOK_DIR') .. '/ideas', title = vim.fn.input('Title: ') }<CR>",
  { desc = 'New idea' }
)
vim.keymap.set('n', '<leader>zd', "<cmd>ZkNew { dir = vim.fn.expand('$ZK_NOTEBOOK_DIR') .. '/daily' }<CR>", { desc = 'New daily' })
vim.keymap.set('n', '<leader>zf', '<cmd>ZkNotes<CR>', { desc = 'Find notes' })
vim.keymap.set('n', '<leader>zi', '<cmd>ZkInsertLink<CR>', { desc = 'Insert link' })
vim.keymap.set('n', '<leader>zb', '<cmd>ZkBacklinks<CR>', { desc = 'Backlinks' })
vim.keymap.set('n', '<leader>zl', '<cmd>ZkLinks<CR>', { desc = 'Links' })
vim.keymap.set('n', '<leader>zt', '<cmd>ZkTags<CR>', { desc = 'Tags' })
