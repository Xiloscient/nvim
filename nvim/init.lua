require("plugins")
require("setup")

require("cmp_setup")
require("lsp_setup")


require("easymotion_setup")
require("vsnip_setup")
require('lualine').setup{
    options = {
        theme = 'dracula',
        icons_enabled = false
    }
}

require('nvim-autopairs').setup {}


require("nvim-tree").setup()
