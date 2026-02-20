local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("plugins")
require("setting")
require("keymap")
require("lsp")
require("fzf")

vim.cmd("colorscheme kanagawa-wave")

require'nvim-treesitter.configs'.setup { highlight = { enable = true }, indent = { enable = true } }
require('statusline')
require('nvim-tree').setup()

require('nvim-autopairs').setup()

require('gitsigns').setup()
require("ibl").setup()
