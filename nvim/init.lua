-- Load Vim-Plug
vim.cmd [[
  call plug#begin('~/.local/share/nvim/plugged')
  call plug#end()
]]

-- Import options
require('options')
require("keybindings")

-- import plugins
require('pluginstall')
require('setup')

-- import appearance settings
require('appearance')

-- Import plugin configurations
require("plugins.autopairs")
require('plugins.mini')
require("plugins.coc")
require("plugins.fold")
require("plugins.todo")
