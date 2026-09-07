vim.pack.add { 'https://github.com/goolord/alpha-nvim' }

local dashboard = require 'alpha.themes.dashboard'

dashboard.section.header.val = {
  '                                   ',
  '                                    ',
  '    ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆',
  '    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋',
  '           ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄',
  '           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄',
  '          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀',
  '    ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄',
  '   ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄',
  '  ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄',
  '  ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄',
  '      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆',
  '       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃',
  '                                    ',
}

dashboard.section.header.opts.hl = 'Type'

dashboard.section.buttons.val = {
  dashboard.button('e', '󰈔  New file', '<cmd>ene<CR>'),
  dashboard.button('f', '󰱼  Find file', '<cmd>Telescope find_files<CR>'),
  dashboard.button('r', '󰄉  Recent files', '<cmd>Telescope oldfiles<CR>'),
  dashboard.button('g', '󰈞  Find text', '<cmd>Telescope live_grep<CR>'),
  dashboard.button('c', '  Configuration', '<cmd>lua vim.cmd("Telescope find_files cwd=" .. vim.fn.stdpath("config"))<CR>'),
  dashboard.button('q', '󰗼  Quit', '<cmd>qa<CR>'),
}

require('alpha').setup(dashboard.config)
