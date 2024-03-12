require("plugins")
require("setup")
require("colorscheme_setup")

require("cmp_setup")
require("lsp_setup")
require("vsnip_setup")

require'nvim-treesitter.configs'.setup { highlight = { enable = true }, indent = { enable = true } }
require('lualine').setup{ options = { theme = 'gruvbox', icons_enabled = true } }

require('nvim-autopairs').setup()
require("nvim-tree").setup()
require('gitsigns').setup()
require("ibl").setup()

require("flash").treesitter()
