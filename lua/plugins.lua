require('lazy').setup({

    "nvim-lua/plenary.nvim",

    ------------------ visual stuff ------------------
    "ellisonleao/gruvbox.nvim",
    "catppuccin/nvim",
    'nvim-lualine/lualine.nvim',

    ------------------ editor -----------------
    'junegunn/fzf', --fuzzy search
    'junegunn/fzf.vim',

    'preservim/vimux', --tmux support
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
        -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
        -- 'super-tab' for mappings similar to vscode (tab to accept)
        -- 'enter' for enter to accept
        -- 'none' for no mappings
        --
        -- All presets have the following mappings:
        -- C-space: Open menu or open docs if already open
        -- C-n/C-p or Up/Down: Select next/previous item
        -- C-e: Hide menu
        -- C-k: Toggle signature help (if signature.enabled = true)
        --
        -- See :h blink-cmp-config-keymap for defining your own keymap
        keymap = { preset = 'enter' },

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

    'preservim/tagbar',

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
