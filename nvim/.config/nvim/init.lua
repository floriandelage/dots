require 'options'
require 'keymaps'
require 'pack'
require 'plugins'

local ok, matugen = pcall(require, 'matugen')
if ok then matugen.setup() end
