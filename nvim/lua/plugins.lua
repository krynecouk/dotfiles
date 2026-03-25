-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Themes
  { "dracula/vim", name = "dracula" },

  -- Navigation
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- Editor
  "tpope/vim-surround",
  "tpope/vim-commentary",

  -- Language support
  "neovim/nvim-lspconfig",
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
})
