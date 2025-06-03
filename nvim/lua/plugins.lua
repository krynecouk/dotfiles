local Plug = vim.fn['plug#']
local install_path = vim.fn.stdpath "data" .. "/plugged"

vim.call('plug#begin', install_path)

-- Themes
Plug('dracula/vim', { as = 'dracula' })

-- Navigation
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

-- Editor
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

-- Language support
Plug 'neovim/nvim-lsp'
Plug 'nvim-treesitter/nvim-treesitter'

vim.call('plug#end')
