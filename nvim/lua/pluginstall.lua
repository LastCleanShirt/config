-- Load Vim-Plug
vim.cmd [[
  call plug#begin('~/.local/share/nvim/plugged')
	Plug 'morhetz/gruvbox'
	Plug 'itchyny/lightline.vim'
	Plug 'shinchu/lightline-gruvbox.vim'
	Plug 'echasnovski/mini.nvim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
	Plug 'windwp/nvim-autopairs'
	Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'anuvyklack/pretty-fold.nvim'

  Plug 'nvim-lua/plenary.nvim'
  Plug 'folke/todo-comments.nvim'

  call plug#end()
]]

-- Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
-- Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons 
-- Plug 'romgrk/barbar.nvim
