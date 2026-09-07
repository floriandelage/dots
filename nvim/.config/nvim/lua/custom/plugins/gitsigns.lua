vim.pack.add { 'https://github.com/lewis6991/gitsigns.nvim' }

local gitsigns = require 'gitsigns'

gitsigns.setup {
  signs = {
    add = { text = '+' },
    change = { text = '~' },
    delete = { text = '_' },
    topdelete = { text = '‾' },
    changedelete = { text = '~' },
  },

  on_attach = function()
    vim.keymap.set('n', ']c', function()
      if vim.wo.diff then
        vim.cmd.normal { ']c', bang = true }
      else
        gitsigns.nav_hunk 'next'
      end
    end, { desc = 'Jump to next git [c]hange' })

    vim.keymap.set('n', '[c', function()
      if vim.wo.diff then
        vim.cmd.normal { '[c', bang = true }
      else
        gitsigns.nav_hunk 'prev'
      end
    end, { desc = 'Jump to previous git [c]hange' })

    vim.keymap.set('v', '<leader>hs', function() gitsigns.stage_hunk { vim.fn.line '.', vim.fn.line 'v' } end, { desc = 'git [s]tage hunk' })
    vim.keymap.set('v', '<leader>hr', function() gitsigns.reset_hunk { vim.fn.line '.', vim.fn.line 'v' } end, { desc = 'git [r]eset hunk' })
    vim.keymap.set('n', '<leader>hs', gitsigns.stage_hunk, { desc = 'git [s]tage hunk' })
    vim.keymap.set('n', '<leader>hr', gitsigns.reset_hunk, { desc = 'git [r]eset hunk' })
    vim.keymap.set('n', '<leader>hp', gitsigns.preview_hunk, { desc = 'git [p]review hunk' })
    vim.keymap.set('n', '<leader>hb', function() gitsigns.blame_line { full = true } end, { desc = 'git [b]lame line' })
    vim.keymap.set({ 'o', 'x' }, 'ih', gitsigns.select_hunk)
  end,
}
