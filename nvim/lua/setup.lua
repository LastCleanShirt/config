-- COC
vim.g.coc_global_extensions = { 'coc-godot' }
vim.api.nvim_command('autocmd FileType gdscript setlocal omnifunc=coc#refresh()')
