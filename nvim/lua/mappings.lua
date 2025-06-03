local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

-- Navigation
keymap('n', '<leader><leader>', '<cmd>lua require("telescope.builtin").find_files()<cr>', opts)
keymap('n', '<leader>,', '<cmd>lua require("telescope.builtin").buffers()<cr>', opts)
keymap('n', '<leader>*', '<cmd>lua require("telescope.builtin").live_grep()<cr>', opts)
-- keymap('t', '<Esc>', '<C-\\><C-n>', opts)
