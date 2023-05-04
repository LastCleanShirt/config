local vapi = vim.api

-- set hybrid numbers
vapi.nvim_exec([[
  set number relativenumber
  augroup numbertoggle
    autocmd!
    autocmd bufenter,focusgained,insertleave * set relativenumber
    autocmd bufleave,focuslost,insertenter   * set norelativenumber
  augroup end
]], true)

vapi.nvim_command("colorscheme gruvbox")

-- define the highlight groups
vim.cmd('augroup gruvbox_hl')
vim.cmd('autocmd!')
vim.cmd('autocmd colorscheme gruvbox hi visual guibg=#504945 guifg=#ebdbb2')
vim.cmd('augroup END')


vim.api.nvim_set_hl(0, "Normal", {guibg=NONE, ctermbg=NONE})
