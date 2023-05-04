local keyset = vim.keymap.set
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}


-- Leaderkey
vim.g.mapleader = ","

-- FZF
vim.cmd [[
	nnoremap <leader>f :FZF<CR>
	vnoremap <leader>f :FZF<CR>
]]

-- CoC.vim
vim.cmd [[
	inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
	inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
	inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"
]]
-- Use <c-j> to trigger snippets
keyset("i", "<c-j>", "<Plug>(coc-snippets-select)")
-- Use <c-space> to trigger completion
keyset("i", "<c-space>", "coc#refresh()", {silent = true, expr = true})
keyset("i", "<c-r>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
