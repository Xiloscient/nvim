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
require("setup")
require("colorscheme_setup")

require("cmp_setup")
require("lsp_setup")
require("vsnip_setup")

require'nvim-treesitter.configs'.setup { highlight = { enable = true }, indent = { enable = true } }
require('lualine').setup{ options = { theme = 'gruvbox'} }

require('nvim-autopairs').setup()
require("nvim-tree").setup()

require('gitsigns').setup()
require("ibl").setup()
require('nvim-highlight-colors').setup()

require("copilot_cmp").setup()
require("copilot").setup({
    suggestion = { enabled = false, },
    panel = { enabled = false, },
    filetypes = { text = false, [""] = false,},
})
