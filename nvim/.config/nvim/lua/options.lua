local opt = vim.opt
local g = vim.g

-- Leader
g.mapleader = ' '
g.maplocalleader = ' '

-- Performance
vim.loader.enable()

-- UI
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = 'yes'
opt.showmode = false
opt.scrolloff = 10

-- Editing
opt.breakindent = false
opt.confirm = true
opt.undofile = true
opt.mouse = 'a'

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.inccommand = 'split'

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Whitespace
opt.list = true
opt.listchars = {
  tab = '» ',
  trail = '·',
  nbsp = '␣',
}
opt.fillchars = { eob = ' ' }

-- Timing
opt.updatetime = 250
opt.timeoutlen = 300

-- Clipboard
vim.schedule(function() opt.clipboard = 'unnamedplus' end)

-- Fonts
g.have_nerd_font = true

-- Diagnostics
vim.diagnostic.config {
  update_in_insert = false,
  severity_sort = true,
  float = { border = 'single', source = 'if_many' },
  underline = { severity = { min = vim.diagnostic.severity.WARN } },
  virtual_text = true,

  jump = {
    on_jump = function(_, bufnr)
      vim.diagnostic.open_float {
        bufnr = bufnr,
        scope = 'cursor',
        focus = false,
      }
    end,
  },
}
