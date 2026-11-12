vim.g.mapleader = ' '
vim.opt.mouse = ''

-- Look & Feel
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.signcolumn = 'yes'
vim.opt.showmode = false
vim.o.cmdheight = 0
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.fillchars = { eob = ' ' }
vim.opt.shortmess:append 'I'
vim.opt.list = true
vim.opt.listchars = {
	tab = '→ ',
	trail = '·',
	nbsp = '␣',
}

-- Editing
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.breakindent = true

-- Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Files
vim.opt.undofile = true
vim.opt.swapfile = false
vim.opt.confirm = true

-- Clipboard
vim.api.nvim_create_autocmd('UIEnter', {
	callback = function() vim.opt.clipboard = 'unnamedplus' end,
})

-- ui2
require('vim._core.ui2').enable {}
