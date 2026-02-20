require('lazy').setup({

    ------------------ visual stuff ------------------
    "ellisonleao/gruvbox.nvim",
    "nvim-lualine/lualine.nvim",


    ------------------ editor -----------------
    "ibhagwan/fzf-lua",

    'nvim-tree/nvim-tree.lua', --file tree
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },


    ------------------ completion and linting -----------------

    'neovim/nvim-lspconfig',
    {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},

    {
      'saghen/blink.cmp',
      dependencies = { 'rafamadriz/friendly-snippets' },

      version = '1.*',

      ---@module 'blink.cmp'
      ---@type blink.cmp.Config
      opts = {
        completion = { documentation = { auto_show = true } },
        sources = { default = { 'lsp', 'path', 'snippets', 'buffer' } },
        fuzzy = { implementation = "prefer_rust_with_warning" }
      },

      opts_extend = { "sources.default" }
    },

    'rust-lang/rust.vim',

    ------------------ qol ------------------
    'tpope/vim-surround',   -- better surrounding chars
    'tpope/vim-commentary', -- comment/uncomment
    'ntpeters/vim-better-whitespace', -- whitespace cleanup
    'windwp/nvim-autopairs', --bracket pair generation

    ------------------ git ------------------
    "kdheepak/lazygit.nvim",
    { 'lewis6991/gitsigns.nvim',
        opts = {
            signs = {
                add = { text = '+' },
                change = { text = '~' },
                delete = { text = '_' },
                topdelete = { text = '‾' },
                changedelete = { text = '~' },
            }
        }
    },

    'tpope/vim-fugitive'
})
