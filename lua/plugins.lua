require('lazy').setup({

    "nvim-lua/plenary.nvim",

    ------------------ visual stuff ------------------
    "ellisonleao/gruvbox.nvim",
    "catppuccin/nvim",
    "rebelot/kanagawa.nvim",
    "nvim-lualine/lualine.nvim",


    ------------------ editor -----------------
    'junegunn/fzf', --fuzzy search
    {
      "ibhagwan/fzf-lua",
      -- optional for icon support
      dependencies = { "nvim-tree/nvim-web-devicons" },
      -- or if using mini.icons/mini.nvim
      -- dependencies = { "nvim-mini/mini.icons" },
      ---@module "fzf-lua"
      ---@type fzf-lua.Config|{}
      ---@diagnostics disable: missing-fields
      opts = {}
      ---@diagnostics enable: missing-fields
    },

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
        appearance = { nerd_font_variant = 'mono' },
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
    --'folke/flash.nvim',

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
