-- Load nvim-autopairs
local npairs = require('nvim-autopairs')
local Rule = require('nvim-autopairs.rule')
local ts_conds = require('nvim-autopairs.ts-conds')

-- Configure nvim-autopairs
npairs.setup({
  map_bs = false,
  map_c_w = true,
  auto_select = false,
})



-- Disable nvim-autopairs mapping for backspace and Ctrl-W in HTML files
vim.cmd('autocmd FileType html let b:nvim_autopairs_map_bs = 0')
vim.cmd('autocmd FileType html let b:nvim_autopairs_map_c_w = 0')
